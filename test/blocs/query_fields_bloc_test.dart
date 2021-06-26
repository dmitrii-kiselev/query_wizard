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
          final field = QueryElement(
            name: 'Field',
            type: QueryElementType.column,
            elements: List<QueryElement>.empty(growable: true),
          );
          final event = QueryFieldAdded(field: field);

          bloc.add(event);
        },
        expect: () => [
              QueryFieldsInitial(fields: [
                QueryElement(
                  name: 'Field',
                  type: QueryElementType.column,
                  elements: List<QueryElement>.empty(growable: true),
                )
              ]),
              QueryFieldsChanged(fields: [
                QueryElement(
                  name: 'Field',
                  type: QueryElementType.column,
                  elements: List<QueryElement>.empty(growable: true),
                )
              ]),
            ]);

    blocTest('changes field when QueryFieldUpdated is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final field = QueryElement(
            name: 'Field New',
            type: QueryElementType.column,
            elements: List<QueryElement>.empty(growable: true),
          );
          final fieldAdded = QueryFieldAdded(field: field);
          final fieldUpdated = QueryFieldUpdated(
            index: 0,
            field: field,
          );

          bloc.add(fieldAdded);
          bloc.add(fieldUpdated);
        },
        expect: () {
          final expectedFields = [
            QueryElement(
              name: 'Field New',
              type: QueryElementType.column,
              elements: List<QueryElement>.empty(growable: true),
            ),
          ];

          return [
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
          ];
        });

    blocTest('copies field when QueryFieldCopied is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final field = QueryElement(
            name: 'Field',
            type: QueryElementType.column,
            elements: List<QueryElement>.empty(growable: true),
          );
          final fieldAdded = QueryFieldAdded(field: field);
          final fieldCopied = QueryFieldCopied(field: field);

          bloc.add(fieldAdded);
          bloc.add(fieldCopied);
        },
        expect: () {
          final expectedFields = [
            QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: List<QueryElement>.empty(growable: true),
            ),
            QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: List<QueryElement>.empty(growable: true),
            ),
          ];

          return [
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
          ];
        });

    blocTest('removes field when QueryFieldDeleted is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final fieldAdded = QueryFieldAdded(
            field: QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: List<QueryElement>.empty(growable: true),
            ),
          );
          const fieldDeleted = QueryFieldDeleted(index: 0);

          bloc.add(fieldAdded);
          bloc.add(fieldDeleted);
        },
        expect: () {
          final List<QueryElement> expectedFields = [];

          return [
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
          ];
        });

    blocTest('changes field order when QueryFieldOrderChanged is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final field = QueryElement(
            name: 'Field',
            type: QueryElementType.column,
            elements: List<QueryElement>.empty(growable: true),
          );
          final fieldAdded1 = QueryFieldAdded(field: field);
          final fieldAdded2 = QueryFieldAdded(field: field);

          const fieldOrderChanged = QueryFieldOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(fieldAdded1);
          bloc.add(fieldAdded2);
          bloc.add(fieldOrderChanged);
        },
        expect: () {
          final expectedFields = [
            QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: List<QueryElement>.empty(growable: true),
            ),
            QueryElement(
              name: 'Field',
              type: QueryElementType.column,
              elements: List<QueryElement>.empty(growable: true),
            ),
          ];

          return [
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
          ];
        });
  });
}
