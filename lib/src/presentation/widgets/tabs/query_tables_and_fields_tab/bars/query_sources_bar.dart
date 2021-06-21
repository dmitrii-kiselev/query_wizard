import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';

class QuerySourcesBar extends StatelessWidget {
  const QuerySourcesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sourcesBloc = BlocProvider.of<QuerySourcesBloc>(context);
    final tablesBloc = BlocProvider.of<QueryTablesBloc>(context);
    final fieldsBloc = BlocProvider.of<QueryFieldsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QuerySourcesBloc, QuerySourcesState>(builder: (
      context,
      state,
    ) {
      return state.map(
        (value) => const Center(child: CircularProgressIndicator()),
        loadInProgress: (s) {
          return const Center(child: CircularProgressIndicator());
        },
        loadSuccess: (s) {
          return Scaffold(
            body: SourcesTreeView(
                items: s.sources,
                onTap: (item) {
                  if (item.value.type == QueryElementType.column &&
                      item.checked) {
                    fieldsBloc
                        .add(QueryFieldsEvent.fieldAdded(field: item.value));
                  }
                },
                onLongPress: (item) {
                  if (item.value.type == QueryElementType.table &&
                      item.checked) {
                    tablesBloc
                        .add(QueryTablesEvent.tableAdded(table: item.value));
                  }
                }),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                sourcesBloc.add(
                  const QuerySourcesEvent.sourcesRequested(),
                );
              },
              tooltip: localizations?.refresh ?? 'Refresh',
              child: const Icon(Icons.update_rounded),
            ),
          );
        },
        loadFailure: (s) {
          return const Center(child: CircularProgressIndicator());
        },
        sourcesChanged: (s) {
          return Scaffold(
            body: SourcesTreeView(
                items: s.sources,
                onTap: (item) {
                  if (item.value.type == QueryElementType.column &&
                      item.checked) {
                    fieldsBloc
                        .add(QueryFieldsEvent.fieldAdded(field: item.value));
                  }
                },
                onLongPress: (item) {
                  if (item.value.type == QueryElementType.table &&
                      item.checked) {
                    tablesBloc
                        .add(QueryTablesEvent.tableAdded(table: item.value));
                  }
                }),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                sourcesBloc.add(
                  const QuerySourcesEvent.sourcesRequested(),
                );
              },
              tooltip: localizations?.refresh ?? 'Refresh',
              child: const Icon(Icons.update_rounded),
            ),
          );
        },
      );
    });
  }
}
