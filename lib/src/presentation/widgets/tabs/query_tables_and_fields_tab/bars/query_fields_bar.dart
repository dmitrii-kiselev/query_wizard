import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:uuid/uuid.dart';

class QueryFieldsBar extends StatelessWidget {
  const QueryFieldsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryFieldsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryFieldsBloc, QueryFieldsState>(
      builder: (
        context,
        state,
      ) {
        if (state is QueryFieldsChanged) {
          return Scaffold(
            body: ListView.builder(
              itemCount: state.fields.length,
              itemBuilder: (context, index) {
                final field = state.fields[index];

                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.horizontal_rule_rounded),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (_) => BlocProvider<QueryFieldsBloc>.value(
                            value: bloc,
                            child: _CustomExpressionPage(id: field.id),
                          ),
                          fullscreenDialog: true,
                        ),
                      );
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
                            bloc.add(
                              QueryFieldCopied(id: field.id),
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations?.remove ?? 'Remove',
                          onPressed: () {
                            bloc.add(
                              QueryFieldDeleted(id: field.id),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              padding: const EdgeInsets.all(
                QueryWizardConstants.defaultEdgeInsetsAllValue,
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (_) => BlocProvider<QueryFieldsBloc>.value(
                      value: bloc,
                      child: const _CustomExpressionPage(),
                    ),
                    fullscreenDialog: true,
                  ),
                );
              },
              tooltip: localizations?.add ?? 'Add',
              child: const Icon(Icons.add),
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class _CustomExpressionPage extends HookWidget {
  const _CustomExpressionPage({this.id});

  final String? id;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryFieldsBloc>(context);
    final controller = useTextEditingController();
    final localizations = QueryWizardLocalizations.of(context);
    final theme = Theme.of(context);

    if (id != null) {
      final field = bloc.state.fields.findById(id!);
      controller.text = field.name;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations?.customExpression ?? 'Custom expression'),
        actions: [
          TextButton(
            onPressed: () {
              final field = QueryElement(
                id: id == null ? const Uuid().v1() : id!,
                name: controller.text,
                type: QueryElementType.column,
                elements: List.empty(growable: true),
              );

              if (id == null) {
                bloc.add(QueryFieldAdded(field: field));
              } else {
                bloc.add(QueryFieldUpdated(field: field));
              }

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
        padding: const EdgeInsets.all(
          QueryWizardConstants.defaultEdgeInsetsAllValue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                keyboardType: TextInputType.multiline,
                maxLines: 99999,
                autofocus: true,
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
