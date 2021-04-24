import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/blocs.dart';

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
          final event = QueryTableAdded(table: 'Table');

          bloc.add(event);
        },
        expect: () => [
              QueryTablesInitial(tables: ['Table']),
              QueryTablesChanged(tables: ['Table'])
            ]);

    blocTest('changes table when QueryTableEdited is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final table = 'Table';
          final tableAdded = QueryTableAdded(table: table);
          final tableEdited = QueryTableEdited(index: 0, table: 'Table New');

          bloc.add(tableAdded);
          bloc.add(tableEdited);
        },
        expect: () {
          final expectedTables = ['Table New'];

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
          final table = 'Table';
          final tableAdded = QueryTableAdded(table: table);
          final tableCopied = QueryTableCopied(table: table);

          bloc.add(tableAdded);
          bloc.add(tableCopied);
        },
        expect: () {
          final expectedTables = ['Table', 'Table'];

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
          final table = 'Table';
          final tableAdded = QueryTableAdded(table: table);
          final tableRemoved = QueryTableRemoved(index: 0);

          bloc.add(tableAdded);
          bloc.add(tableRemoved);
        },
        expect: () {
          final List<String> expectedTables = [];

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
          final table = 'Table';
          final tableAdded1 = QueryTableAdded(table: table);
          final tableAdded2 = QueryTableAdded(table: 'Table');
          final tableOrderChanged =
              QueryTableOrderChanged(newIndex: 0, oldIndex: 1);

          bloc.add(tableAdded1);
          bloc.add(tableAdded2);
          bloc.add(tableOrderChanged);
        },
        expect: () {
          final expectedTables = ['Table', 'Table'];

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
