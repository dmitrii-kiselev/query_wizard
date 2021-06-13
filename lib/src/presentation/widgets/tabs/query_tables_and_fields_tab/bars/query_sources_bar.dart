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

    return BlocBuilder<QuerySourcesBloc, QuerySourcesState>(
        builder: (context, state) {
      if (state is QuerySourcesLoadSuccess || state is QuerySourcesChanged) {
        return Scaffold(
          body: SourcesTreeView(
              items: state.sources,
              onTap: (item) {
                if (item.value.type == QueryElementType.column &&
                    item.checked) {
                  fieldsBloc.add(QueryFieldAdded(field: item.value));
                }
              },
              onLongPress: (item) {
                if (item.value.type == QueryElementType.table && item.checked) {
                  tablesBloc.add(QueryTableAdded(table: item.value));
                }
              }),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              const event = QuerySourcesRequested();
              sourcesBloc.add(event);
            },
            tooltip: localizations?.refresh ?? 'Refresh',
            child: const Icon(Icons.update_rounded),
          ),
        );
      }

      return const Center(child: CircularProgressIndicator());
    });
  }
}
