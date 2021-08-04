import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

class QueryUnionsBar extends StatelessWidget {
  const QueryUnionsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueriesBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    return BlocBuilder<QueriesBloc, QueriesState>(
      builder: (
        context,
        state,
      ) {
        if (state is QueriesChanged) {
          return Scaffold(
            body: ReorderableListView.builder(
              itemCount: state.queries.length,
              itemBuilder: (context, index) {
                final query = state.queries[index];

                return Card(
                  key: ValueKey('$index'),
                  child: ListTile(
                    leading: const Icon(Icons.merge_type_rounded),
                    title: Text(query.name),
                    trailing: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.copy_outlined),
                          tooltip: localizations.copy,
                          onPressed: () {
                            bloc.add(QueryCopied(query: query));
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations.remove,
                          onPressed: () {
                            bloc.add(QueryDeleted(id: query.id));
                          },
                        ),
                        ReorderableDragStartListener(
                          index: index,
                          child: const Icon(Icons.drag_handle),
                        ),
                      ],
                    ),
                  ),
                );
              },
              padding: const EdgeInsets.all(
                QueryWizardConstants.defaultEdgeInsetsAllValue,
              ),
              onReorder: (int oldIndex, int newIndex) {
                bloc.add(
                  QueryOrderChanged(
                    oldIndex: oldIndex,
                    newIndex: newIndex,
                  ),
                );
              },
              buildDefaultDragHandles: false,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                bloc.add(QueryAdded(query: Query.empty()));
              },
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
