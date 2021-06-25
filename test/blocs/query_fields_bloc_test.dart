import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

void main() {
  group('QueryFieldsBloc', () {
    late QueryFieldsBloc fieldsTabBloc;

    setUp(() {
      fieldsTabBloc = QueryFieldsBloc();
    });

    test('initial state is empty', () {
      expect(fieldsTabBloc.state.fields, []);
    });

    blocTest('adds field when QueryFieldAdded is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          const field = QueryElement(
            name: 'Field',
            type: QueryElementType.column,
            elements: [],
          );
          const event = QueryFieldsEvent.fieldAdded(
            field: field,
          );

          bloc.add(event);
        },
        expect: () => [
              const QueryFieldsState(fields: [
                QueryElement(
                  name: 'Field',
                  type: QueryElementType.column,
                  elements: [],
                )
              ]),
            ]);

    blocTest('changes field when QueryFieldUpdated is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          const field = QueryElement(
            name: 'Field New',
            type: QueryElementType.column,
            elements: [],
          );
          const fieldAdded = QueryFieldsEvent.fieldAdded(field: field);
          const fieldUpdated = QueryFieldsEvent.fieldUpdated(
            index: 0,
            field: field,
          );

          bloc.add(fieldAdded);
          bloc.add(fieldUpdated);
        },
        expect: () {
          const expectedFields = [
            QueryElement(
              name: 'Field New',
              type: QueryElementType.column,
              elements: [],
            )
          ];

          return [
            const QueryFieldsState(fields: expectedFields),
          ];
        });

    blocTest('copies field when QueryFieldCopied is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          const field = QueryElement(
            name: 'Field',
            type: QueryElementType.column,
            elements: [],
          );
          const fieldAdded = QueryFieldsEvent.fieldAdded(field: field);
          const fieldCopied = QueryFieldsEvent.fieldCopied(field: field);

          bloc.add(fieldAdded);
          bloc.add(fieldCopied);
        },
        expect: () {
          final expectedFields = [
            const QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: [],
            ),
            const QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: [],
            )
          ];

          return [
            QueryFieldsState(fields: expectedFields),
          ];
        });

    blocTest('removes field when QueryFieldDeleted is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          const fieldAdded = QueryFieldsEvent.fieldAdded(
            field: QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: [],
            ),
          );
          const fieldDeleted = QueryFieldsEvent.fieldDeleted(index: 0);

          bloc.add(fieldAdded);
          bloc.add(fieldDeleted);
        },
        expect: () {
          final List<QueryElement> expectedFields = [];

          return [
            QueryFieldsState(fields: expectedFields),
          ];
        });

    blocTest('changes field order when QueryFieldOrderChanged is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          const field = QueryElement(
            name: 'Field',
            type: QueryElementType.column,
            elements: [],
          );
          const fieldAdded1 = QueryFieldsEvent.fieldAdded(field: field);
          const fieldAdded2 = QueryFieldsEvent.fieldAdded(field: field);
          const fieldOrderChanged = QueryFieldsEvent.fieldOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(fieldAdded1);
          bloc.add(fieldAdded2);
          bloc.add(fieldOrderChanged);
        },
        expect: () {
          final expectedFields = [
            const QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: [],
            ),
            const QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: [],
            ),
          ];

          return [
            QueryFieldsState(fields: expectedFields),
          ];
        });
  });
}
