import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

void main() {
  group('QueryFieldsBloc', () {
    late QueryFieldsBloc fieldsTabBloc;

    setUp(() {
      fieldsTabBloc =
          QueryFieldsBloc(initialState: QueryFieldsInitial(fields: []));
    });

    test('initial state is empty', () {
      expect(fieldsTabBloc.state.fields, []);
    });

    blocTest('adds field when QueryFieldAdded is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final field = DbElement(name: 'Field', nodeType: DbNodeType.column);
          final event = QueryFieldAdded(field: field);

          bloc.add(event);
        },
        expect: () => [
              QueryFieldsInitial(fields: [
                DbElement(name: 'Field', nodeType: DbNodeType.column)
              ]),
              QueryFieldsChanged(fields: [
                DbElement(name: 'Field', nodeType: DbNodeType.column)
              ]),
            ]);

    blocTest('changes field when QueryFieldEdited is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final field =
              DbElement(name: 'Field New', nodeType: DbNodeType.column);
          final fieldAdded = QueryFieldAdded(field: field);
          final fieldEdited = QueryFieldEdited(index: 0, field: field);

          bloc.add(fieldAdded);
          bloc.add(fieldEdited);
        },
        expect: () {
          final expectedFields = [
            DbElement(name: 'Field New', nodeType: DbNodeType.column)
          ];

          return [
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields)
          ];
        });

    blocTest('copies field when QueryFieldCopied is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final field = DbElement(name: 'Field', nodeType: DbNodeType.column);
          final fieldAdded = QueryFieldAdded(field: field);
          final fieldCopied = QueryFieldCopied(field: field);

          bloc.add(fieldAdded);
          bloc.add(fieldCopied);
        },
        expect: () {
          final expectedFields = [
            DbElement(name: 'Field', nodeType: DbNodeType.column),
            DbElement(name: 'Field', nodeType: DbNodeType.column)
          ];

          return [
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields)
          ];
        });

    blocTest('removes field when QueryFieldRemoved is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final fieldAdded = QueryFieldAdded(
              field: DbElement(name: 'Field', nodeType: DbNodeType.column));
          final fieldRemoved = QueryFieldRemoved(index: 0);

          bloc.add(fieldAdded);
          bloc.add(fieldRemoved);
        },
        expect: () {
          final List<DbElement> expectedFields = [];

          return [
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields)
          ];
        });

    blocTest('changes field order when QueryFieldOrderChanged is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final field = DbElement(name: 'Field', nodeType: DbNodeType.column);
          final fieldAdded1 = QueryFieldAdded(field: field);
          final fieldAdded2 = QueryFieldAdded(field: field);
          final fieldOrderChanged =
              QueryFieldOrderChanged(newIndex: 0, oldIndex: 1);

          bloc.add(fieldAdded1);
          bloc.add(fieldAdded2);
          bloc.add(fieldOrderChanged);
        },
        expect: () {
          final expectedFields = [
            DbElement(name: 'Field', nodeType: DbNodeType.column),
            DbElement(name: 'Field', nodeType: DbNodeType.column)
          ];

          return [
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields),
            QueryFieldsInitial(fields: expectedFields),
            QueryFieldsChanged(fields: expectedFields)
          ];
        });
  });
}
