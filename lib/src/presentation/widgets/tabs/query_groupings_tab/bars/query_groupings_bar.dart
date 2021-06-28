import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';
import 'package:uuid/uuid.dart';

class QueryGroupingsBar extends HookWidget {
  const QueryGroupingsBar({Key? key}) : super(key: key);

  void _navigateToFieldsSelectionPage({required BuildContext context}) {
    final groupingsBloc = BlocProvider.of<QueryGroupingsBloc>(context);
    final tablesBloc = BlocProvider.of<QueryTablesBloc>(context);

    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (context) => BlocProvider<QueryTablesBloc>.value(
          value: tablesBloc,
          child: FieldsSelectionPage(
            onSelected: (fields) {
              for (final field in fields) {
                groupingsBloc.add(
                  QueryGroupingAdded(
                    grouping: QueryGrouping(
                      id: const Uuid().v1(),
                      name: field.name,
                      type: QueryGroupingType.grouping,
                      elements: List.empty(growable: true),
                    ),
                  ),
                );
              }
            },
          ),
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryGroupingsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    return BlocBuilder<QueryGroupingsBloc, QueryGroupingsState>(
      builder: (
        context,
        state,
      ) {
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
                          tooltip: localizations.remove,
                          onPressed: () {
                            bloc.add(QueryGroupingDeleted(id: grouping.id));
                          },
                        ),
                      ],
                    ),
                    title: Text(grouping.toString()),
                  ),
                );
              },
              padding: const EdgeInsets.all(
                QueryWizardConstants.defaultEdgeInsetsAllValue,
              ),
              onReorder: (int oldIndex, int newIndex) {
                bloc.add(
                  QueryGroupingOrderChanged(
                    oldIndex: oldIndex,
                    newIndex: newIndex,
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _navigateToFieldsSelectionPage(context: context),
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
