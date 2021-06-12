import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';

class QueryGroupingsBar extends HookWidget {
  const QueryGroupingsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryGroupingsBloc>(context);
    final tables = BlocProvider.of<QueryTablesBloc>(context).state.tables;
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryGroupingsBloc, QueryGroupingsState>(
        builder: (context, state) {
      if (state is QueryGroupingsChanged) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.groupings.length,
            itemBuilder: (context, index) {
              final grouping = state.groupings[index];

              return Card(
                key: ValueKey('$index'),
                child: ListTile(
                    leading: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations?.remove ?? 'Remove',
                          onPressed: () {
                            bloc.add(QueryGroupingDeleted(index: index));
                          },
                        ),
                      ],
                    ),
                    title: Text(grouping.toString())),
              );
            },
            padding: const EdgeInsets.all(
                QueryWizardConstants.defaultEdgeInsetsAllValue),
            onReorder: (int oldIndex, int newIndex) {
              bloc.add(QueryGroupingOrderChanged(
                  oldIndex: oldIndex, newIndex: newIndex));
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => FieldsSelectionPage(
                        tables: tables,
                        onSelected: (fields) {
                          fields.forEach((f) {
                            bloc.add(QueryGroupingAdded(
                                grouping: QueryGrouping(
                                    name: f.name,
                                    type: GroupingType.grouping)));
                          });
                        }),
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
