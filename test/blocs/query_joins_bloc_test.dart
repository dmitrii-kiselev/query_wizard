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

    blocTest('adds join when QueryJoinAdded is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          final join = QueryJoin.empty();
          final event = QueryJoinAdded(join: join);

          bloc.add(event);
        },
        expect: () => [
              QueryJoinsInitial(joins: [QueryJoin.empty()]),
              QueryJoinsChanged(joins: [QueryJoin.empty()])
            ]);

    blocTest('changes join when QueryJoinUpdated is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded = QueryJoinAdded(join: join);
          final joinUpdated =
              QueryJoinUpdated(index: 0, join: join, isLeftAll: true);

          bloc.add(joinAdded);
          bloc.add(joinUpdated);
        },
        expect: () {
          final expectedJoins = [QueryJoin.empty().copyWith(isLeftAll: true)];

          return [
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins)
          ];
        });

    blocTest('copies join when QueryJoinCopied is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded = QueryJoinAdded(join: join);
          final joinCopied = QueryJoinCopied(join: join);

          bloc.add(joinAdded);
          bloc.add(joinCopied);
        },
        expect: () {
          final expectedJoins = [QueryJoin.empty(), QueryJoin.empty()];

          return [
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins)
          ];
        });

    blocTest('removes join when QueryJoinDeleted is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded = QueryJoinAdded(join: join);
          final joinDeleted = QueryJoinDeleted(index: 0);

          bloc.add(joinAdded);
          bloc.add(joinDeleted);
        },
        expect: () {
          final List<QueryJoin> expectedJoins = [];

          return [
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins)
          ];
        });

    blocTest('changes join order when QueryJoinOrderChanged is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded1 = QueryJoinAdded(join: join);
          final joinAdded2 = QueryJoinAdded(join: QueryJoin.empty());
          final joinOrderChanged =
              QueryJoinOrderChanged(newIndex: 0, oldIndex: 1);

          bloc.add(joinAdded1);
          bloc.add(joinAdded2);
          bloc.add(joinOrderChanged);
        },
        expect: () {
          final expectedJoins = [QueryJoin.empty(), QueryJoin.empty()];

          return [
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins)
          ];
        });
  });
}
