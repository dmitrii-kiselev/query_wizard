import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryFieldsBar extends StatelessWidget {
  const QueryFieldsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryFieldsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryFieldsBloc, QueryFieldsState>(
        builder: (context, state) {
      if (state is QueryFieldsChanged) {
        return Scaffold(
          body: ListView.builder(
            itemCount: state.fields.length,
            itemBuilder: (context, index) {
              final field = state.fields[index];

              return Card(
                child: ListTile(
                  leading: Icon(Icons.horizontal_rule_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) =>
                              _CustomExpressionPage(index: index, bloc: bloc),
                          fullscreenDialog: true,
                        ));
                  },
                  title: Text(field.name),
                  subtitle: field.parent != null
                      ? Text(field.parent!.alias ?? field.parent!.name)
                      : null,
                  trailing: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.copy_outlined),
                        tooltip: localizations?.copy ?? 'Copy',
                        onPressed: () {
                          final event = QueryFieldCopied(field: field);
                          bloc.add(event);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.highlight_remove_outlined),
                        tooltip: localizations?.remove ?? 'Remove',
                        onPressed: () {
                          final event = QueryFieldRemoved(index: index);
                          bloc.add(event);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
            padding: const EdgeInsets.all(8),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => _CustomExpressionPage(bloc: bloc),
                    fullscreenDialog: true,
                  ));
            },
            child: const Icon(Icons.add),
            tooltip: localizations?.add ?? 'Add',
          ),
        );
      }

      return Center(child: CircularProgressIndicator());
    });
  }
}

class _CustomExpressionPage extends HookWidget {
  const _CustomExpressionPage({this.index, required this.bloc});

  final int? index;
  final QueryFieldsBloc bloc;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final localizations = QueryWizardLocalizations.of(context);
    final theme = Theme.of(context);

    if (index != null) {
      var field = bloc.state.fields.elementAt(index!);
      controller.text = field.name;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(localizations?.customExpression ?? 'Custom expression'),
          actions: [
            TextButton(
              onPressed: () {
                QueryFieldsEvent event;

                final field = DbElement(
                    name: controller.text, nodeType: DbNodeType.column);

                if (this.index == null) {
                  event = QueryFieldAdded(field: field);
                } else {
                  event = QueryFieldEdited(index: this.index!, field: field);
                }

                bloc.add(event);
                Navigator.pop(context);
              },
              child: Text(
                localizations?.save ?? 'Save',
                style: theme.textTheme.bodyText2?.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: TextField(
                controller: controller,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                scrollPadding: EdgeInsets.all(20.0),
                keyboardType: TextInputType.multiline,
                maxLines: 99999,
                autofocus: true,
              )),
            ],
          ),
          padding: const EdgeInsets.all(8),
        ),
        resizeToAvoidBottomInset: true);
  }
}
