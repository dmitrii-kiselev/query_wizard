import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

void main() {
  group('QueryConditionsBloc', () {
    late QueryConditionsBloc conditionsBloc;

    setUp(() {
      conditionsBloc = QueryConditionsBloc();
    });

    test('initial state is empty', () {
      expect(conditionsBloc.state.conditions, []);
    });

    blocTest('adds condition when QueryConditionAdded is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          const condition = QueryCondition.empty();
          const event = QueryConditionAdded(condition: condition);

          bloc.add(event);
        },
        expect: () => [
              QueryConditionsInitial(
                // ignore: prefer_const_literals_to_create_immutables
                conditions: [const QueryCondition.empty()],
              ),
              const QueryConditionsChanged(conditions: [QueryCondition.empty()])
            ]);

    blocTest('changes condition when QueryConditionUpdated is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          const condition = QueryCondition.empty();
          const conditionAdded = QueryConditionAdded(condition: condition);
          const conditionUpdated = QueryConditionUpdated(condition: condition);

          bloc.add(conditionAdded);
          bloc.add(conditionUpdated);
        },
        expect: () {
          final expectedConditions = [
            const QueryCondition.empty().copyWith(id: '')
          ];

          return [
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions),
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions),
          ];
        });

    blocTest('copies condition when QueryConditionCopied is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          const condition = QueryCondition.empty();
          const conditionAdded = QueryConditionAdded(condition: condition);
          const conditionCopied = QueryConditionCopied(id: '');

          bloc.add(conditionAdded);
          bloc.add(conditionCopied);
        },
        expect: () {
          return [
            isA<QueryConditionsInitial>(),
            isA<QueryConditionsChanged>(),
            isA<QueryConditionsInitial>(),
            isA<QueryConditionsChanged>(),
          ];
        });

    blocTest('removes condition when QueryConditionDeleted is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          const condition = QueryCondition.empty();
          const conditionAdded = QueryConditionAdded(condition: condition);
          const conditionDeleted = QueryConditionDeleted(id: '');

          bloc.add(conditionAdded);
          bloc.add(conditionDeleted);
        },
        expect: () {
          final List<QueryCondition> expectedConditions = [];

          return [
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions),
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions),
          ];
        });

    blocTest('changes condition order when QueryConditionOrderChanged is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          const condition = QueryCondition.empty();
          const conditionAdded1 = QueryConditionAdded(condition: condition);
          const conditionAdded2 = QueryConditionAdded(
            condition: QueryCondition.empty(),
          );
          const conditionOrderChanged = QueryConditionOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(conditionAdded1);
          bloc.add(conditionAdded2);
          bloc.add(conditionOrderChanged);
        },
        expect: () {
          const expectedConditions = [
            QueryCondition.empty(),
            QueryCondition.empty(),
          ];

          return [
            QueryConditionsInitial(conditions: expectedConditions),
            const QueryConditionsChanged(conditions: expectedConditions),
            QueryConditionsInitial(conditions: expectedConditions),
            const QueryConditionsChanged(conditions: expectedConditions),
            QueryConditionsInitial(conditions: expectedConditions),
            const QueryConditionsChanged(conditions: expectedConditions),
          ];
        });
  });
}
