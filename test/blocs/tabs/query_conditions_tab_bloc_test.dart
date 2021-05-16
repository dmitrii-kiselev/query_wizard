import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

void main() {
  group('QueryConditionsTabBloc', () {
    late QueryConditionsTabBloc conditionsTabBloc;

    setUp(() {
      conditionsTabBloc = QueryConditionsTabBloc(
          initialState: QueryConditionsInitial(conditions: []));
    });

    test('initial state is empty', () {
      expect(conditionsTabBloc.state.conditions, []);
    });

    blocTest('adds condition when QueryConditionAdded is added',
        build: () => conditionsTabBloc,
        act: (QueryConditionsTabBloc bloc) {
          final condition = QueryCondition.empty();
          final event = QueryConditionAdded(condition: condition);

          bloc.add(event);
        },
        expect: () => [
              QueryConditionsInitial(conditions: [QueryCondition.empty()]),
              QueryConditionsChanged(conditions: [QueryCondition.empty()])
            ]);

    blocTest('changes condition when QueryConditionEdited is added',
        build: () => conditionsTabBloc,
        act: (QueryConditionsTabBloc bloc) {
          final condition = QueryCondition.empty();
          final conditionAdded = QueryConditionAdded(condition: condition);
          final conditionEdited = QueryConditionEdited(
              index: 0, condition: condition, isCustom: true);

          bloc.add(conditionAdded);
          bloc.add(conditionEdited);
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
        build: () => conditionsTabBloc,
        act: (QueryConditionsTabBloc bloc) {
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

    blocTest('removes condition when QueryConditionRemoved is added',
        build: () => conditionsTabBloc,
        act: (QueryConditionsTabBloc bloc) {
          final condition = QueryCondition.empty();
          final conditionAdded = QueryConditionAdded(condition: condition);
          final conditionRemoved = QueryConditionRemoved(index: 0);

          bloc.add(conditionAdded);
          bloc.add(conditionRemoved);
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
        build: () => conditionsTabBloc,
        act: (QueryConditionsTabBloc bloc) {
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
