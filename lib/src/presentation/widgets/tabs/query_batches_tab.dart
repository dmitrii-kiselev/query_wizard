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
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryBatchesBloc, QueryBatchesState>(
      builder: (context, state) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.batches.length,
            itemBuilder: (context, index) {
              final queryBatch = state.batches[index];

              return Card(
                key: ValueKey('$index'),
                child: ListTile(
                  leading: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.copy_outlined),
                        tooltip: localizations?.copy ?? 'Copy',
                        onPressed: () {
                          bloc.add(
                            QueryBatchesEvent.batchCopied(
                              batch: queryBatch,
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.highlight_remove_outlined),
                        tooltip: localizations?.remove ?? 'Remove',
                        onPressed: () {
                          bloc.add(
                            QueryBatchesEvent.batchDeleted(
                              index: index,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  title: Text(queryBatch.name),
                ),
              );
            },
            padding: const EdgeInsets.all(
              QueryWizardConstants.defaultEdgeInsetsAllValue,
            ),
            onReorder: (int oldIndex, int newIndex) {
              bloc.add(
                QueryBatchesEvent.batchOrderChanged(
                  oldIndex: oldIndex,
                  newIndex: newIndex,
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              bloc.add(QueryBatchesEvent.batchAdded(batch: QueryBatch.empty()));
            },
            tooltip: localizations?.add ?? 'Add',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
