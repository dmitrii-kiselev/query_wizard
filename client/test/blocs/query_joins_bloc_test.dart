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
          const join = QueryJoin.empty();
          const event = QueryJoinAdded(join: join);

          bloc.add(event);
        },
        expect: () => [
              // ignore: prefer_const_literals_to_create_immutables
              QueryJoinsInitial(joins: [const QueryJoin.empty()]),
              const QueryJoinsChanged(joins: [QueryJoin.empty()]),
            ]);

    blocTest('changes join when QueryJoinUpdated is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          const join = QueryJoin.empty();
          const joinAdded = QueryJoinAdded(join: join);
          const joinUpdated = QueryJoinUpdated(join: join);

          bloc.add(joinAdded);
          bloc.add(joinUpdated);
        },
        expect: () {
          final expectedJoins = [
            const QueryJoin.empty().copyWith(id: ''),
          ];

          return [
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
          ];
        });

    blocTest('copies join when QueryJoinCopied is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          const join = QueryJoin.empty();
          const joinAdded = QueryJoinAdded(join: join);
          const joinCopied = QueryJoinCopied(id: '');

          bloc.add(joinAdded);
          bloc.add(joinCopied);
        },
        expect: () {
          return [
            isA<QueryJoinsInitial>(),
            isA<QueryJoinsChanged>(),
            isA<QueryJoinsInitial>(),
            isA<QueryJoinsChanged>(),
          ];
        });

    blocTest('removes join when QueryJoinDeleted is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          const join = QueryJoin.empty();
          const joinAdded = QueryJoinAdded(join: join);
          const joinDeleted = QueryJoinDeleted(id: '');

          bloc.add(joinAdded);
          bloc.add(joinDeleted);
        },
        expect: () {
          final List<QueryJoin> expectedJoins = [];

          return [
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
          ];
        });

    blocTest('changes join order when QueryJoinOrderChanged is added',
        build: () => joinsBloc,
        act: (QueryJoinsBloc bloc) {
          const join = QueryJoin.empty();
          const joinAdded1 = QueryJoinAdded(join: join);
          const joinAdded2 = QueryJoinAdded(join: QueryJoin.empty());
          const joinOrderChanged = QueryJoinOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(joinAdded1);
          bloc.add(joinAdded2);
          bloc.add(joinOrderChanged);
        },
        expect: () {
          final expectedJoins = [
            const QueryJoin.empty(),
            const QueryJoin.empty(),
          ];

          return [
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
            QueryJoinsInitial(joins: expectedJoins),
            QueryJoinsChanged(joins: expectedJoins),
          ];
        });
  });
}
