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
          final condition = QueryCondition.empty();
          final event = QueryConditionAdded(condition: condition);

          bloc.add(event);
        },
        expect: () => [
              QueryConditionsInitial(conditions: [QueryCondition.empty()]),
              QueryConditionsChanged(conditions: [QueryCondition.empty()])
            ]);

    blocTest('changes condition when QueryConditionUpdated is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          final condition = QueryCondition.empty();
          final conditionAdded = QueryConditionAdded(condition: condition);
          final conditionUpdated = QueryConditionUpdated(
              index: 0, condition: condition, isCustom: true);

          bloc.add(conditionAdded);
          bloc.add(conditionUpdated);
        },
        expect: () {
          final expectedConditions = [
            QueryCondition.empty().copyWith(isCustom: true)
          ];

          return [
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions),
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions)
          ];
        });

    blocTest('copies condition when QueryConditionCopied is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          final condition = QueryCondition.empty();
          final conditionAdded = QueryConditionAdded(condition: condition);
          final conditionCopied = QueryConditionCopied(condition: condition);

          bloc.add(conditionAdded);
          bloc.add(conditionCopied);
        },
        expect: () {
          final expectedConditions = [
            QueryCondition.empty(),
            QueryCondition.empty()
          ];

          return [
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions),
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions)
          ];
        });

    blocTest('removes condition when QueryConditionDeleted is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          final condition = QueryCondition.empty();
          final conditionAdded = QueryConditionAdded(condition: condition);
          final conditionDeleted = QueryConditionDeleted(index: 0);

          bloc.add(conditionAdded);
          bloc.add(conditionDeleted);
        },
        expect: () {
          final List<QueryCondition> expectedConditions = [];

          return [
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions),
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions)
          ];
        });

    blocTest('changes condition order when QueryConditionOrderChanged is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          final condition = QueryCondition.empty();
          final conditionAdded1 = QueryConditionAdded(condition: condition);
          final conditionAdded2 =
              QueryConditionAdded(condition: QueryCondition.empty());
          final conditionOrderChanged =
              QueryConditionOrderChanged(newIndex: 0, oldIndex: 1);

          bloc.add(conditionAdded1);
          bloc.add(conditionAdded2);
          bloc.add(conditionOrderChanged);
        },
        expect: () {
          final expectedConditions = [
            QueryCondition.empty(),
            QueryCondition.empty()
          ];

          return [
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions),
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions),
            QueryConditionsInitial(conditions: expectedConditions),
            QueryConditionsChanged(conditions: expectedConditions)
          ];
        });
  });
}
