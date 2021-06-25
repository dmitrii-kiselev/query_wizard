import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

void main() {
  group('QueryJoinsBloc', () {
    late QueryJoinsBloc joinsBloc;

    setUp(() {
      joinsBloc = QueryJoinsBloc();
    });

    test('initial state is empty', () {
      expect(joinsBloc.state.joins, []);
    });

    blocTest(
      'adds join when QueryJoinAdded is added',
      build: () => joinsBloc,
      act: (QueryJoinsBloc bloc) {
        final join = QueryJoin.empty();
        final event = QueryJoinsEvent.joinAdded(join: join);

        bloc.add(event);
      },
      expect: () => [
        QueryJoinsState(isChanging: true, joins: [QueryJoin.empty()]),
        QueryJoinsState(isChanging: false, joins: [QueryJoin.empty()]),
      ],
    );

    blocTest('changes join when QueryJoinUpdated is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded = QueryJoinsEvent.joinAdded(join: join);
          final joinUpdated = QueryJoinsEvent.joinUpdated(
            index: 0,
            join: join,
            isLeftAll: true,
          );

          bloc.add(joinAdded);
          bloc.add(joinUpdated);
        },
        expect: () {
          final expectedJoins = [QueryJoin.empty().copyWith(isLeftAll: true)];

          return [
            QueryJoinsState(isChanging: true, joins: expectedJoins),
            QueryJoinsState(isChanging: false, joins: expectedJoins),
            QueryJoinsState(isChanging: true, joins: expectedJoins),
            QueryJoinsState(isChanging: false, joins: expectedJoins),
          ];
        });

    blocTest('copies join when QueryJoinCopied is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded = QueryJoinsEvent.joinAdded(join: join);
          final joinCopied = QueryJoinsEvent.joinCopied(join: join);

          bloc.add(joinAdded);
          bloc.add(joinCopied);
        },
        expect: () {
          final expectedJoins = [QueryJoin.empty(), QueryJoin.empty()];

          return [
            QueryJoinsState(isChanging: true, joins: expectedJoins),
            QueryJoinsState(isChanging: false, joins: expectedJoins),
            QueryJoinsState(isChanging: true, joins: expectedJoins),
            QueryJoinsState(isChanging: false, joins: expectedJoins),
          ];
        });

    blocTest('removes join when QueryJoinDeleted is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded = QueryJoinsEvent.joinAdded(join: join);
          const joinDeleted = QueryJoinsEvent.joinDeleted(index: 0);

          bloc.add(joinAdded);
          bloc.add(joinDeleted);
        },
        expect: () {
          final List<QueryJoin> expectedJoins = [];

          return [
            QueryJoinsState(isChanging: true, joins: expectedJoins),
            QueryJoinsState(isChanging: false, joins: expectedJoins),
            QueryJoinsState(isChanging: true, joins: expectedJoins),
            QueryJoinsState(isChanging: false, joins: expectedJoins),
          ];
        });

    blocTest('changes join order when QueryJoinOrderChanged is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded1 = QueryJoinsEvent.joinAdded(join: join);
          final joinAdded2 = QueryJoinsEvent.joinAdded(join: QueryJoin.empty());
          const joinOrderChanged = QueryJoinsEvent.joinOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(joinAdded1);
          bloc.add(joinAdded2);
          bloc.add(joinOrderChanged);
        },
        expect: () {
          final expectedJoins = [
            QueryJoin.empty(),
            QueryJoin.empty(),
          ];

          return [
            QueryJoinsState(isChanging: true, joins: expectedJoins),
            QueryJoinsState(isChanging: false, joins: expectedJoins),
            QueryJoinsState(isChanging: true, joins: expectedJoins),
            QueryJoinsState(isChanging: false, joins: expectedJoins),
            QueryJoinsState(isChanging: true, joins: expectedJoins),
            QueryJoinsState(isChanging: false, joins: expectedJoins),
          ];
        });
  });
}
