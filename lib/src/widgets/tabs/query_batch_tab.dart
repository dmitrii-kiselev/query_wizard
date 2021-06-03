import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryBatchTab extends StatelessWidget {
  const QueryBatchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryBatchTabBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryBatchTabBloc, QueryBatchTabState>(
        builder: (context, state) {
      if (state is QueryBatchesChanged) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.queryBatches.length,
            itemBuilder: (context, index) {
              final queryBatch = state.queryBatches[index];
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
                            final event =
                                QueryBatchCopied(queryBatch: queryBatch);
                            bloc.add(event);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations?.remove ?? 'Remove',
                          onPressed: () {
                            final event = QueryBatchRemoved(index: index);
                            bloc.add(event);
                          },
                        ),
                      ],
                    ),
                    title: Text(queryBatch.name)),
              );
            },
            padding: const EdgeInsets.all(8),
            onReorder: (int oldIndex, int newIndex) {
              final event = QueryBatchOrderChanged(
                  oldIndex: oldIndex, newIndex: newIndex);
              bloc.add(event);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final event = QueryBatchAdded(queryBatch: QueryBatch.empty());

              bloc.add(event);
            },
            child: const Icon(Icons.add),
            tooltip: localizations?.add ?? 'Add',
          ),
        );
      }

      return build(context);
    });
  }
}
