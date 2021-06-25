import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

void main() {
  group(
    'QueryConditionsBloc',
    () {
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
            final event = QueryConditionsEvent.conditionAdded(
              condition: condition,
            );

            bloc.add(event);
          },
          expect: () => [
                QueryConditionsState(conditions: [QueryCondition.empty()])
              ]);

      blocTest('changes condition when QueryConditionUpdated is added',
          build: () => conditionsBloc,
          act: (QueryConditionsBloc bloc) {
            final condition = QueryCondition.empty();
            final conditionAdded = QueryConditionsEvent.conditionAdded(
              condition: condition,
            );
            final conditionUpdated = QueryConditionsEvent.conditionUpdated(
              index: 0,
              condition: condition,
              isCustom: true,
            );

            bloc.add(conditionAdded);
            bloc.add(conditionUpdated);
          },
          expect: () {
            final expectedConditions = [
              QueryCondition.empty().copyWith(isCustom: true)
            ];

            return [
              QueryConditionsState(conditions: expectedConditions),
            ];
          });

      blocTest('copies condition when QueryConditionCopied is added',
          build: () => conditionsBloc,
          act: (QueryConditionsBloc bloc) {
            final condition = QueryCondition.empty();
            final conditionAdded = QueryConditionsEvent.conditionAdded(
              condition: condition,
            );
            final conditionCopied = QueryConditionsEvent.conditionCopied(
              condition: condition,
            );

            bloc.add(conditionAdded);
            bloc.add(conditionCopied);
          },
          expect: () {
            final expectedConditions = [
              QueryCondition.empty(),
              QueryCondition.empty()
            ];

            return [
              QueryConditionsState(conditions: expectedConditions),
            ];
          });

      blocTest('removes condition when QueryConditionDeleted is added',
          build: () => conditionsBloc,
          act: (QueryConditionsBloc bloc) {
            final condition = QueryCondition.empty();
            final conditionAdded = QueryConditionsEvent.conditionAdded(
              condition: condition,
            );
            const conditionDeleted = QueryConditionsEvent.conditionDeleted(
              index: 0,
            );

            bloc.add(conditionAdded);
            bloc.add(conditionDeleted);
          },
          expect: () {
            final List<QueryCondition> expectedConditions = [];

            return [
              QueryConditionsState(conditions: expectedConditions),
            ];
          });

      blocTest(
        'changes condition order when QueryConditionOrderChanged is added',
        build: () => conditionsBloc,
        act: (QueryConditionsBloc bloc) {
          final condition = QueryCondition.empty();
          final conditionAdded1 = QueryConditionsEvent.conditionAdded(
            condition: condition,
          );
          final conditionAdded2 = QueryConditionsEvent.conditionAdded(
            condition: QueryCondition.empty(),
          );
          const conditionOrderChanged =
              QueryConditionsEvent.conditionOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(conditionAdded1);
          bloc.add(conditionAdded2);
          bloc.add(conditionOrderChanged);
        },
        expect: () {
          final expectedConditions = [
            QueryCondition.empty(),
            QueryCondition.empty(),
          ];

          return [
            QueryConditionsState(conditions: expectedConditions),
          ];
        },
      );
    },
  );
}
