import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_conditions_event.dart';

part 'query_conditions_state.dart';

@lazySingleton
class QueryConditionsBloc
    extends Bloc<QueryConditionsEvent, QueryConditionsState> {
  QueryConditionsBloc() : super(QueryConditionsInitial());

  @override
  Stream<QueryConditionsState> mapEventToState(
      QueryConditionsEvent event) async* {
    yield QueryConditionsInitial(conditions: state.conditions);

    if (event is QueryConditionsInitialized) {
      yield* _mapQueryConditionsInitializedToState(event);
    } else if (event is QueryConditionAdded) {
      yield* _mapQueryConditionAddedToState(event);
    } else if (event is QueryConditionUpdated) {
      yield* _mapQueryConditionUpdatedToState(event);
    } else if (event is QueryConditionCopied) {
      yield* _mapQueryConditionCopiedToState(event);
    } else if (event is QueryConditionDeleted) {
      yield* _mapQueryConditionDeletedToState(event);
    } else if (event is QueryConditionOrderChanged) {
      yield* _mapQueryConditionOrderChangedToState(event);
    }
  }

  Stream<QueryConditionsState> _mapQueryConditionsInitializedToState(
      QueryConditionsInitialized event) async* {
    yield QueryConditionsChanged(conditions: event.conditions);
  }

  Stream<QueryConditionsState> _mapQueryConditionAddedToState(
      QueryConditionAdded event) async* {
    state.conditions.add(event.condition);
    yield QueryConditionsChanged(conditions: state.conditions);
  }

  Stream<QueryConditionsState> _mapQueryConditionUpdatedToState(
      QueryConditionUpdated event) async* {
    final condition = QueryCondition(
      isCustom: event.isCustom ?? event.condition.isCustom,
      leftField: event.leftField ?? event.condition.leftField,
      logicalCompareType:
          event.logicalCompareType ?? event.condition.logicalCompareType,
      rightField: event.rightField ?? event.condition.rightField,
      customCondition: event.customCondition ?? event.condition.customCondition,
    );

    state.conditions.removeAt(event.index);
    state.conditions.insert(event.index, condition);

    yield QueryConditionsChanged(conditions: state.conditions);
  }

  Stream<QueryConditionsState> _mapQueryConditionCopiedToState(
    QueryConditionCopied event,
  ) async* {
    state.conditions.add(event.condition.copy());
    yield QueryConditionsChanged(conditions: state.conditions);
  }

  Stream<QueryConditionsState> _mapQueryConditionDeletedToState(
    QueryConditionDeleted event,
  ) async* {
    state.conditions.removeAt(event.index);
    yield QueryConditionsChanged(conditions: state.conditions);
  }

  Stream<QueryConditionsState> _mapQueryConditionOrderChangedToState(
    QueryConditionOrderChanged event,
  ) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final QueryCondition item = state.conditions.removeAt(event.oldIndex);
    state.conditions.insert(newIndex, item);

    yield QueryConditionsChanged(conditions: state.conditions);
  }
}
