import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

void main() {
  group('QueryTablesBloc', () {
    late QueryTablesBloc tablesTabBloc;

    setUp(() {
      tablesTabBloc = QueryTablesBloc(QueryTablesInitial(tables: []));
    });

    test('initial state is empty', () {
      expect(tablesTabBloc.state.tables, []);
    });

    blocTest('adds table when QueryTableAdded is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final event = QueryTableAdded(
              table: DbElement(name: 'Table', nodeType: DbNodeType.table));

          bloc.add(event);
        },
        expect: () => [
              QueryTablesInitial(tables: [
                DbElement(name: 'Table', nodeType: DbNodeType.table)
              ]),
              QueryTablesChanged(tables: [
                DbElement(name: 'Table', nodeType: DbNodeType.table)
              ])
            ]);

    blocTest('changes table when QueryTableEdited is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final table = DbElement(name: 'Table', nodeType: DbNodeType.table);
          final tableAdded = QueryTableAdded(table: table);
          final tableEdited = QueryTableEdited(
              index: 0,
              table: DbElement(name: 'Table New', nodeType: DbNodeType.table));

          bloc.add(tableAdded);
          bloc.add(tableEdited);
        },
        expect: () {
          final expectedTables = [
            DbElement(name: 'Table New', nodeType: DbNodeType.table)
          ];

          return [
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables)
          ];
        });

    blocTest('copies table when QueryTableCopied is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final table = DbElement(name: 'Table', nodeType: DbNodeType.table);
          final tableAdded = QueryTableAdded(table: table);
          final tableCopied = QueryTableCopied(table: table);

          bloc.add(tableAdded);
          bloc.add(tableCopied);
        },
        expect: () {
          final expectedTables = [
            DbElement(name: 'Table', nodeType: DbNodeType.table),
            DbElement(name: 'Table', nodeType: DbNodeType.table)
          ];

          return [
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables)
          ];
        });

    blocTest('removes table when QueryTableRemoved is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final table = DbElement(name: 'Table', nodeType: DbNodeType.table);
          final tableAdded = QueryTableAdded(table: table);
          final tableRemoved = QueryTableRemoved(index: 0);

          bloc.add(tableAdded);
          bloc.add(tableRemoved);
        },
        expect: () {
          final List<DbElement> expectedTables = [];

          return [
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables)
          ];
        });

    blocTest('changes table order when QueryTableOrderChanged is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final table = DbElement(name: 'Table', nodeType: DbNodeType.table);
          final tableAdded1 = QueryTableAdded(table: table);
          final tableAdded2 = QueryTableAdded(
              table: DbElement(name: 'Table', nodeType: DbNodeType.table));
          final tableOrderChanged =
              QueryTableOrderChanged(newIndex: 0, oldIndex: 1);

          bloc.add(tableAdded1);
          bloc.add(tableAdded2);
          bloc.add(tableOrderChanged);
        },
        expect: () {
          final expectedTables = [
            DbElement(name: 'Table', nodeType: DbNodeType.table),
            DbElement(name: 'Table', nodeType: DbNodeType.table)
          ];

          return [
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables)
          ];
        });
  });
}
