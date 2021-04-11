import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

void main() {
  group('JoinsTabBloc', () {
    late JoinsTabBloc joinsTabBloc;

    setUp(() {
      joinsTabBloc = JoinsTabBloc(JoinsInitial(joins: []));
    });

    test('initial state is empty', () {
      expect(joinsTabBloc.state.joins, []);
    });

    blocTest('adds join when JoinAdded is added',
        build: () => joinsTabBloc,
        act: (JoinsTabBloc bloc) {
          final join = Join.empty();
          final event = JoinAdded(join: join);

          bloc.add(event);
        },
        expect: () => [
              JoinsInitial(joins: [Join.empty()]),
              JoinsChanged(joins: [Join.empty()])
            ]);

    blocTest('changes join when JoinEdited is added',
        build: () => joinsTabBloc,
        act: (JoinsTabBloc bloc) {
          final join = Join.empty();
          final joinAdded = JoinAdded(join: join);
          final joinEdited = JoinEdited(index: 0, join: join, isLeftAll: true);

          bloc.add(joinAdded);
          bloc.add(joinEdited);
        },
        expect: () {
          final expectedJoins = [Join.empty().copyWith(isLeftAll: true)];

          return [
            JoinsInitial(joins: expectedJoins),
            JoinsChanged(joins: expectedJoins),
            JoinsInitial(joins: expectedJoins),
            JoinsChanged(joins: expectedJoins)
          ];
        });

    blocTest('copies join when JoinCopied is added',
        build: () => joinsTabBloc,
        act: (JoinsTabBloc bloc) {
          final join = Join.empty();
          final joinAdded = JoinAdded(join: join);
          final joinCopied = JoinCopied(join: join);

          bloc.add(joinAdded);
          bloc.add(joinCopied);
        },
        expect: () {
          final expectedJoins = [Join.empty(), Join.empty()];

          return [
            JoinsInitial(joins: expectedJoins),
            JoinsChanged(joins: expectedJoins),
            JoinsInitial(joins: expectedJoins),
            JoinsChanged(joins: expectedJoins)
          ];
        });

    blocTest('removes join when JoinRemoved is added',
        build: () => joinsTabBloc,
        act: (JoinsTabBloc bloc) {
          final join = Join.empty();
          final joinAdded = JoinAdded(join: join);
          final joinRemoved = JoinRemoved(index: 0);

          bloc.add(joinAdded);
          bloc.add(joinRemoved);
        },
        expect: () {
          final List<Join> expectedJoins = [];

          return [
            JoinsInitial(joins: expectedJoins),
            JoinsChanged(joins: expectedJoins),
            JoinsInitial(joins: expectedJoins),
            JoinsChanged(joins: expectedJoins)
          ];
        });

    blocTest('changes join order when JoinOrderChanged is added',
        build: () => joinsTabBloc,
        act: (JoinsTabBloc bloc) {
          final join = Join.empty();
          final joinAdded1 = JoinAdded(join: join);
          final joinAdded2 = JoinAdded(join: Join.empty());
          final joinOrderChanged = JoinOrderChanged(newIndex: 0, oldIndex: 1);

          bloc.add(joinAdded1);
          bloc.add(joinAdded2);
          bloc.add(joinOrderChanged);
        },
        expect: () {
          final expectedJoins = [Join.empty(), Join.empty()];

          return [
            JoinsInitial(joins: expectedJoins),
            JoinsChanged(joins: expectedJoins),
            JoinsInitial(joins: expectedJoins),
            JoinsChanged(joins: expectedJoins),
            JoinsInitial(joins: expectedJoins),
            JoinsChanged(joins: expectedJoins)
          ];
        });
  });
}
