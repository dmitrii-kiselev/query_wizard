import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

class QueryBatchesTab extends StatelessWidget {
  const QueryBatchesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryBatchesBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    return BlocBuilder<QueryBatchesBloc, QueryBatchesState>(
      builder: (
        context,
        state,
      ) {
        if (state is QueryBatchesChanged) {
          return Scaffold(
            body: ReorderableListView.builder(
              itemCount: state.queryBatches.length,
              itemBuilder: (context, index) {
                final queryBatch = state.queryBatches[index];

                return Card(
                  key: ValueKey('$index'),
                  child: ListTile(
                    leading: const Icon(Icons.batch_prediction),
                    title: Text(queryBatch.name),
                    trailing: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.copy_outlined),
                          tooltip: localizations.copy,
                          onPressed: () {
                            bloc.add(QueryBatchCopied(id: queryBatch.id));
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations.remove,
                          onPressed: () {
                            bloc.add(QueryBatchDeleted(id: queryBatch.id));
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
              onReorder: (int oldIndex, int newIndex) {
                bloc.add(
                  QueryBatchOrderChanged(
                    oldIndex: oldIndex,
                    newIndex: newIndex,
                  ),
                );
              },
              buildDefaultDragHandles: false,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                bloc.add(QueryBatchAdded(queryBatch: QueryBatch.empty()));
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
