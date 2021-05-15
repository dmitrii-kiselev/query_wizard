import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

void main() {
  group('QueryJoinsTabBloc', () {
    late QueryJoinsTabBloc joinsTabBloc;

    setUp(() {
      joinsTabBloc =
          QueryJoinsTabBloc(initialState: QueryJoinsInitial(joins: []));
    });

    test('initial state is empty', () {
      expect(joinsTabBloc.state.joins, []);
    });

    blocTest('adds join when QueryJoinAdded is added',
        build: () => joinsTabBloc,
        act: (QueryJoinsTabBloc bloc) {
          final join = QueryJoin.empty();
          final event = QueryJoinAdded(join: join);

          bloc.add(event);
        },
        expect: () => [
              QueryJoinsInitial(joins: [QueryJoin.empty()]),
              QueryJoinsChanged(joins: [QueryJoin.empty()])
            ]);

    blocTest('changes join when QueryJoinEdited is added',
        build: () => joinsTabBloc,
        act: (QueryJoinsTabBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded = QueryJoinAdded(join: join);
          final joinEdited =
              QueryJoinEdited(index: 0, join: join, isLeftAll: true);

          bloc.add(joinAdded);
          bloc.add(joinEdited);
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
        build: () => joinsTabBloc,
        act: (QueryJoinsTabBloc bloc) {
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

    blocTest('removes join when QueryJoinRemoved is added',
        build: () => joinsTabBloc,
        act: (QueryJoinsTabBloc bloc) {
          final join = QueryJoin.empty();
          final joinAdded = QueryJoinAdded(join: join);
          final joinRemoved = QueryJoinRemoved(index: 0);

          bloc.add(joinAdded);
          bloc.add(joinRemoved);
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
        build: () => joinsTabBloc,
        act: (QueryJoinsTabBloc bloc) {
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
