import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';

class QueryAliasesBar extends StatelessWidget {
  const QueryAliasesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    final unionsBloc = BlocProvider.of<QueriesBloc>(context);
    final queries = unionsBloc.state.queries;

    final map = <String, Map<String, String?>>{};
    final fields = queries.expand((q) => q.fields).toSet();

    final fieldNames = Map.fromIterables(
        fields.map((f) => f.name), fields.map((f) => f.alias));

    map['field_names'] = fieldNames;

    for (final query in queries) {
      final fieldsMap = <String, String?>{};

      for (final field in fields) {
        final f = query.fields.firstWhere((f) => f.name == field.name);
        fieldsMap[field.name] = f.alias;
      }

      map[query.name] = fieldsMap;
    }

    final columns = queries
        .map((q) => DataColumn(
              label: Text(
                q.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ))
        .toList();

    columns.insert(
        0,
        DataColumn(
          label: Text(
            localizations?.fieldNames ?? 'Field names',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ));

    final rows = List<DataRow>.empty(growable: true);

    fieldNames.forEach((name, alias) {
      final cells = <DataCell>[];

      cells.add(DataCell(Text(fieldNames[name] ?? '')));

      for (final query in queries) {
        if (map.containsKey(query.name)) {
          final queryFieldNames = map[query.name];
          if (queryFieldNames != null && queryFieldNames.containsKey(name)) {
            cells.add(DataCell(Text(queryFieldNames[name] ?? '')));
          }
        }
      }

      rows.add(DataRow(cells: cells));
    });

    return Scrollbar(
      child: ListView(
        restorationId: 'data_table_list_view',
        padding: const EdgeInsets.all(16),
        children: [
          DataTable(
            columns: columns,
            rows: rows,
          ),
        ],
      ),
    );
  }
}
