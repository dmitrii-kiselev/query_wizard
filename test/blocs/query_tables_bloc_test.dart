import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

void main() {
  group('QueryTablesBloc', () {
    late QueryTablesBloc tablesTabBloc;

    setUp(() {
      tablesTabBloc = QueryTablesBloc();
    });

    test('initial state is empty', () {
      expect(tablesTabBloc.state.tables, []);
    });

    blocTest('adds table when QueryTableAdded is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final event = QueryTableAdded(
            table: QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: List<QueryElement>.empty(growable: true),
            ),
          );

          bloc.add(event);
        },
        expect: () => [
              QueryTablesInitial(tables: [
                QueryElement(
                  name: 'Table',
                  type: QueryElementType.table,
                  elements: List<QueryElement>.empty(growable: true),
                ),
              ]),
              QueryTablesChanged(tables: [
                QueryElement(
                  name: 'Table',
                  type: QueryElementType.table,
                  elements: List<QueryElement>.empty(growable: true),
                ),
              ])
            ]);

    blocTest('changes table when QueryTableUpdated is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final table = QueryElement(
            name: 'Table',
            type: QueryElementType.table,
            elements: List<QueryElement>.empty(growable: true),
          );
          final tableAdded = QueryTableAdded(table: table);
          final tableUpdated = QueryTableUpdated(
            index: 0,
            table: QueryElement(
              name: 'Table New',
              type: QueryElementType.table,
              elements: List<QueryElement>.empty(growable: true),
            ),
          );

          bloc.add(tableAdded);
          bloc.add(tableUpdated);
        },
        expect: () {
          final expectedTables = [
            QueryElement(
              name: 'Table New',
              type: QueryElementType.table,
              elements: List<QueryElement>.empty(growable: true),
            ),
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
          final table = QueryElement(
            name: 'Table',
            type: QueryElementType.table,
            elements: List<QueryElement>.empty(growable: true),
          );
          final tableAdded = QueryTableAdded(table: table);
          final tableCopied = QueryTableCopied(table: table);

          bloc.add(tableAdded);
          bloc.add(tableCopied);
        },
        expect: () {
          final expectedTables = [
            QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: List<QueryElement>.empty(growable: true),
            ),
            QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: List<QueryElement>.empty(growable: true),
            ),
          ];

          return [
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
          ];
        });

    blocTest('removes table when QueryTableDeleted is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final table = QueryElement(
            name: 'Table',
            type: QueryElementType.table,
            elements: List<QueryElement>.empty(growable: true),
          );
          final tableAdded = QueryTableAdded(table: table);
          const tableDeleted = QueryTableDeleted(index: 0);

          bloc.add(tableAdded);
          bloc.add(tableDeleted);
        },
        expect: () {
          final List<QueryElement> expectedTables = [];

          return [
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
          ];
        });

    blocTest('changes table order when QueryTableOrderChanged is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          final table = QueryElement(
            name: 'Table',
            type: QueryElementType.table,
            elements: List<QueryElement>.empty(growable: true),
          );
          final tableAdded1 = QueryTableAdded(table: table);
          final tableAdded2 = QueryTableAdded(
            table: QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: List<QueryElement>.empty(growable: true),
            ),
          );
          const tableOrderChanged = QueryTableOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(tableAdded1);
          bloc.add(tableAdded2);
          bloc.add(tableOrderChanged);
        },
        expect: () {
          final expectedTables = [
            QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: List<QueryElement>.empty(growable: true),
            ),
            QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: List<QueryElement>.empty(growable: true),
            ),
          ];

          return [
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
            QueryTablesInitial(tables: expectedTables),
            QueryTablesChanged(tables: expectedTables),
          ];
        });
  });
}
