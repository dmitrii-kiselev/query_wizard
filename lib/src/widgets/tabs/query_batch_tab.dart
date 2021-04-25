import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryBatchTab extends StatelessWidget {
  const QueryBatchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    final bloc = BlocProvider.of<QueryBatchTabBloc>(context);

    return BlocBuilder<QueryBatchTabBloc, QueryBatchTabState>(
        builder: (context, state) {
      if (state is QueryBatchesChanged) {
        return Scaffold(
          body: ReorderableListView(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            children: <Widget>[
              for (int index = 0; index < state.queryBatches.length; index++)
                ListTile(
                    key: ValueKey('$index'),
                    title: Container(
                        child: _QueryBatchItem(
                            bloc: bloc,
                            index: index,
                            queryBatch: state.queryBatches.elementAt(index)))),
            ],
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

class _QueryBatchItem extends StatelessWidget {
  final QueryWizardLocalizations? localizations;
  final QueryBatchTabBloc bloc;
  final QueryBatch queryBatch;
  final int index;

  const _QueryBatchItem(
      {this.localizations,
      required this.bloc,
      required this.queryBatch,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ..._actionButtons(localizations, bloc, index, queryBatch),
        Text(queryBatch.name)
      ],
    );
  }
}

List<Widget> _actionButtons(QueryWizardLocalizations? localizations,
    QueryBatchTabBloc bloc, int index, QueryBatch queryBatch) {
  return [
    IconButton(
      icon: const Icon(Icons.copy_outlined),
      tooltip: localizations?.copy ?? 'Copy',
      onPressed: () {
        final event = QueryBatchCopied(queryBatch: queryBatch);

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
  ];
}
