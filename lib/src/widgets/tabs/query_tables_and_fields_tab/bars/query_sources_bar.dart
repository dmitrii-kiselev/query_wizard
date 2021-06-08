import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/widgets.dart';

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
              final event = QuerySourcesRequested();
              sourcesBloc.add(event);
            },
            child: const Icon(Icons.update_rounded),
            tooltip: localizations?.refresh ?? 'Refresh',
          ),
        );
      }

      return Center(child: CircularProgressIndicator());
    });
  }
}
