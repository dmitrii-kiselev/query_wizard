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
          const event = QueryTablesEvent.tableAdded(
            table: QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: [],
            ),
          );

          bloc.add(event);
        },
        expect: () => [
              const QueryTablesState(
                isChanging: true,
                tables: [
                  QueryElement(
                    name: 'Table',
                    type: QueryElementType.table,
                    elements: [],
                  ),
                ],
              ),
              const QueryTablesState(
                isChanging: false,
                tables: [
                  QueryElement(
                    name: 'Table',
                    type: QueryElementType.table,
                    elements: [],
                  ),
                ],
              ),
            ]);

    blocTest('changes table when QueryTableUpdated is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          const table = QueryElement(
            name: 'Table',
            type: QueryElementType.table,
            elements: [],
          );
          const tableAdded = QueryTablesEvent.tableAdded(table: table);
          const tableUpdated = QueryTablesEvent.tableUpdated(
            index: 0,
            table: QueryElement(
                name: 'Table New', type: QueryElementType.table, elements: []),
          );

          bloc.add(tableAdded);
          bloc.add(tableUpdated);
        },
        expect: () {
          const expectedTables = [
            QueryElement(
              name: 'Table New',
              type: QueryElementType.table,
              elements: [],
            ),
          ];

          return [
            const QueryTablesState(isChanging: true, tables: expectedTables),
            const QueryTablesState(isChanging: false, tables: expectedTables),
            const QueryTablesState(isChanging: true, tables: expectedTables),
            const QueryTablesState(isChanging: false, tables: expectedTables),
          ];
        });

    blocTest('copies table when QueryTableCopied is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          const table = QueryElement(
            name: 'Table',
            type: QueryElementType.table,
            elements: [],
          );
          const tableAdded = QueryTablesEvent.tableAdded(table: table);
          const tableCopied = QueryTablesEvent.tableCopied(table: table);

          bloc.add(tableAdded);
          bloc.add(tableCopied);
        },
        expect: () {
          const expectedTables = [
            QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: [],
            ),
            QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: [],
            ),
          ];

          return [
            const QueryTablesState(isChanging: true, tables: expectedTables),
            const QueryTablesState(isChanging: false, tables: expectedTables),
            const QueryTablesState(isChanging: true, tables: expectedTables),
            const QueryTablesState(isChanging: false, tables: expectedTables),
          ];
        });

    blocTest('removes table when QueryTableDeleted is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          const table = QueryElement(
            name: 'Table',
            type: QueryElementType.table,
            elements: [],
          );
          const tableAdded = QueryTablesEvent.tableAdded(table: table);
          const tableDeleted = QueryTablesEvent.tableDeleted(index: 0);

          bloc.add(tableAdded);
          bloc.add(tableDeleted);
        },
        expect: () {
          final List<QueryElement> expectedTables = [];

          return [
            QueryTablesState(isChanging: true, tables: expectedTables),
            QueryTablesState(isChanging: false, tables: expectedTables),
            QueryTablesState(isChanging: true, tables: expectedTables),
            QueryTablesState(isChanging: false, tables: expectedTables),
          ];
        });

    blocTest('changes table order when QueryTableOrderChanged is added',
        build: () => tablesTabBloc,
        act: (QueryTablesBloc bloc) {
          const table = QueryElement(
            name: 'Table',
            type: QueryElementType.table,
            elements: [],
          );
          const tableAdded1 = QueryTablesEvent.tableAdded(table: table);
          const tableAdded2 = QueryTablesEvent.tableAdded(
              table: QueryElement(
            name: 'Table',
            type: QueryElementType.table,
            elements: [],
          ));
          const tableOrderChanged = QueryTablesEvent.tableOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(tableAdded1);
          bloc.add(tableAdded2);
          bloc.add(tableOrderChanged);
        },
        expect: () {
          const expectedTables = [
            QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: [],
            ),
            QueryElement(
              name: 'Table',
              type: QueryElementType.table,
              elements: [],
            )
          ];

          return [
            const QueryTablesState(isChanging: true, tables: expectedTables),
            const QueryTablesState(isChanging: false, tables: expectedTables),
            const QueryTablesState(isChanging: true, tables: expectedTables),
            const QueryTablesState(isChanging: false, tables: expectedTables),
            const QueryTablesState(isChanging: true, tables: expectedTables),
            const QueryTablesState(isChanging: false, tables: expectedTables),
          ];
        });
  });
}
