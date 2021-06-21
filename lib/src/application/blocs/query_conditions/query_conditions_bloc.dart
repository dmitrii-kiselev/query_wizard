import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_conditions_bloc.freezed.dart';

part 'query_conditions_event.dart';

part 'query_conditions_state.dart';

@lazySingleton
class QueryConditionsBloc
    extends Bloc<QueryConditionsEvent, QueryConditionsState> {
  QueryConditionsBloc() : super(QueryConditionsState.initial());

  @override
  Stream<QueryConditionsState> mapEventToState(
      QueryConditionsEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(conditions: e.conditions);
      },
      conditionAdded: (e) async* {
        state.conditions.add(e.condition);
        yield state.copyWith(conditions: state.conditions);
      },
      conditionUpdated: (e) async* {
        final condition = QueryCondition(
            isCustom: e.isCustom ?? e.condition.isCustom,
            leftField: e.leftField ?? e.condition.leftField,
            logicalCompareType:
                e.logicalCompareType ?? e.condition.logicalCompareType,
            rightField: e.rightField ?? e.condition.rightField,
            customCondition: e.customCondition ?? e.condition.customCondition);

        state.conditions.removeAt(e.index);
        state.conditions.insert(e.index, condition);

        yield state.copyWith(conditions: state.conditions);
      },
      conditionCopied: (e) async* {
        state.conditions.add(e.condition.copyWith());
        yield state.copyWith(conditions: state.conditions);
      },
      conditionDeleted: (e) async* {
        state.conditions.removeAt(e.index);
        yield state.copyWith(conditions: state.conditions);
      },
      conditionOrderChanged: (e) async* {
        var newIndex = e.newIndex;
        if (e.oldIndex < newIndex) {
          newIndex -= 1;
        }

        final item = state.conditions.removeAt(e.oldIndex);
        state.conditions.insert(newIndex, item);

        yield state.copyWith(conditions: state.conditions);
      },
    );
  }
}
