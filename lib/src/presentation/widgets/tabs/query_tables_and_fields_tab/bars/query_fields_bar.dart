import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';

class QueryFieldsBar extends StatelessWidget {
  const QueryFieldsBar({Key? key}) : super(key: key);

  Widget _buildTitle(QueryElement field) {
    final alias = (field.parent?.alias ?? field.parent?.name) ?? '';

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: alias != '' ? alias : '',
            style: const TextStyle(color: SqlColorScheme.table),
          ),
          TextSpan(
            text: alias != '' ? '.' : '',
            style: const TextStyle(color: SqlColorScheme.dot),
          ),
          TextSpan(
            text: field.name,
            style: const TextStyle(color: SqlColorScheme.column),
          ),
        ],
      ),
    );
  }

  void _navigateToCustomExpressionPage({
    String? id,
    required BuildContext context,
  }) {
    final bloc = BlocProvider.of<QueryFieldsBloc>(context);
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => BlocProvider<QueryFieldsBloc>.value(
          value: bloc,
          child: _CustomExpressionPage(id: id),
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryFieldsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

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
                    onTap: () => _navigateToCustomExpressionPage(
                      id: field.id,
                      context: context,
                    ),
                    title: _buildTitle(field),
                    trailing: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.copy_outlined),
                          tooltip: localizations.copy,
                          onPressed: () {
                            bloc.add(QueryFieldCopied(id: field.id));
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations.remove,
                          onPressed: () {
                            bloc.add(QueryFieldDeleted(id: field.id));
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
              heroTag: 'addField',
              onPressed: () => _navigateToCustomExpressionPage(
                context: context,
              ),
              tooltip: localizations.add,
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
  _CustomExpressionPage({this.id});

  final String? id;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryFieldsBloc>(context);
    final controller = useTextEditingController();
    final localizations = QueryWizardLocalizations.of(context)!;
    final theme = Theme.of(context);

    if (id != null) {
      final field = bloc.state.fields.findById(id!);
      controller.text = field.name;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.customExpression),
        actions: [
          TextButton(
            onPressed: () {
              if (!_formKey.currentState!.validate()) {
                return;
              }

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
              localizations.save,
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
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 99999,
                  autofocus: true,
                  validator: (value) {
                    if (value == '') {
                      return localizations.pleaseEnterExpression;
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
