import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/src/application/blocs/queries/queries_bloc.dart';

class QueryUnionsBar extends StatelessWidget {
  const QueryUnionsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueriesBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueriesBloc, QueriesState>(
      builder: (
        context,
        state,
      ) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.queries.length,
            itemBuilder: (context, index) {
              final query = state.queries[index];
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
                            QueriesEvent.queryCopied(
                              query: query,
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.highlight_remove_outlined),
                        tooltip: localizations?.remove ?? 'Remove',
                        onPressed: () {
                          bloc.add(
                            QueriesEvent.queryDeleted(
                              index: index,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  title: Text(query.name),
                ),
              );
            },
            padding: const EdgeInsets.all(
              QueryWizardConstants.defaultEdgeInsetsAllValue,
            ),
            onReorder: (int oldIndex, int newIndex) {
              bloc.add(
                QueriesEvent.queryOrderChanged(
                  oldIndex: oldIndex,
                  newIndex: newIndex,
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              bloc.add(QueriesEvent.queryAdded(query: Query.empty()));
            },
            tooltip: localizations?.add ?? 'Add',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
