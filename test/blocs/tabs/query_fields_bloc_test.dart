import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/blocs.dart';

void main() {
  group('QueryFieldsBloc', () {
    late QueryFieldsBloc fieldsTabBloc;

    setUp(() {
      fieldsTabBloc = QueryFieldsBloc(QueryFieldsInitial(fields: []));
    });

    test('initial state is empty', () {
      expect(fieldsTabBloc.state.fields, []);
    });

    blocTest('adds field when QueryFieldAdded is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final event = QueryFieldAdded(field: 'Field');

          bloc.add(event);
        },
        expect: () => [
              QueryFieldsInitial(fields: ['Field']),
              QueryFieldsChanged(fields: ['Field'])
            ]);

    blocTest('changes field when QueryFieldEdited is added',
        build: () => fieldsTabBloc,
        act: (QueryFieldsBloc bloc) {
          final field = 'Field';
          final fieldAdded = QueryFieldAdded(field: field);
          final fieldEdited = QueryFieldEdited(index: 0, field: 'Field New');

          bloc.add(fieldAdded);
          bloc.add(fieldEdited);
        },
        expect: () {
          final expectedFields = ['Field New'];

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
          final field = 'Field';
          final fieldAdded = QueryFieldAdded(field: field);
          final fieldCopied = QueryFieldCopied(field: field);

          bloc.add(fieldAdded);
          bloc.add(fieldCopied);
        },
        expect: () {
          final expectedFields = ['Field', 'Field'];

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
          final field = 'Field';
          final fieldAdded = QueryFieldAdded(field: field);
          final fieldRemoved = QueryFieldRemoved(index: 0);

          bloc.add(fieldAdded);
          bloc.add(fieldRemoved);
        },
        expect: () {
          final List<String> expectedFields = [];

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
          final field = 'Field';
          final fieldAdded1 = QueryFieldAdded(field: field);
          final fieldAdded2 = QueryFieldAdded(field: 'Field');
          final fieldOrderChanged =
              QueryFieldOrderChanged(newIndex: 0, oldIndex: 1);

          bloc.add(fieldAdded1);
          bloc.add(fieldAdded2);
          bloc.add(fieldOrderChanged);
        },
        expect: () {
          final expectedFields = ['Field', 'Field'];

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
