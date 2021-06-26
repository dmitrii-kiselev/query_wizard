import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';

class QueryTablesBar extends StatelessWidget {
  const QueryTablesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tablesBloc = BlocProvider.of<QueryTablesBloc>(context);
    final fieldsBloc = BlocProvider.of<QueryFieldsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryTablesBloc, QueryTablesState>(
      builder: (
        context,
        state,
      ) {
        if (state is QueryTablesChanged) {
          return Scaffold(
            body: SourcesTreeView(
              items: state.tables,
              onTap: (item) {
                if (item.value.type == QueryElementType.column) {
                  fieldsBloc.add(
                    QueryFieldAdded(field: item.value),
                  );
                }
              },
              onCopy: (QueryElement table) {
                tablesBloc.add(
                  QueryTableCopied(table: table),
                );
              },
              onEdit: (QueryElement table) {
                final tables = tablesBloc.state.tables;
                final index = tables.indexOf(table);

                Navigator.push(
                  context,
                  DialogRoute<String>(
                    context: context,
                    builder: (context) => _ChangeTableNameDialog(
                      index: index,
                      bloc: tablesBloc,
                    ),
                  ),
                );
              },
              onRemove: (QueryElement table) {
                final tables = tablesBloc.state.tables;
                tablesBloc.add(
                  QueryTableDeleted(
                    index: tables.indexOf(table),
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  DialogRoute<String>(
                    context: context,
                    builder: (context) => const _SubqueryPage(),
                  ),
                );
              },
              tooltip: localizations?.add ?? 'Add',
              child: const Icon(Icons.add),
            ),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class _ChangeTableNameDialog extends HookWidget {
  const _ChangeTableNameDialog({
    required this.index,
    required this.bloc,
  });

  final int index;
  final QueryTablesBloc bloc;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final localizations = QueryWizardLocalizations.of(context);
    final table = bloc.state.tables.elementAt(index);

    controller.text = table.alias ?? table.name;

    return AlertDialog(
      title: Text(localizations?.changeTableName ?? 'Change Table Name'),
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            final newTable = QueryElement(
              name: table.name,
              alias: controller.text,
              type: table.type,
              elements: table.elements,
            );

            bloc.add(
              QueryTableUpdated(
                index: index,
                table: newTable,
              ),
            );
            Navigator.pop(context);
          },
          child: Text(localizations?.save ?? 'Save'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(localizations?.cancel ?? 'Cancel'),
        ),
      ],
    );
  }
}

class _SubqueryPage extends StatelessWidget {
  const _SubqueryPage();

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizations?.subquery ?? 'Subquery',
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              localizations?.save ?? 'Save',
              style: theme.textTheme.bodyText2?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
