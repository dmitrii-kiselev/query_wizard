part of 'query_conditions_bloc.dart';

@freezed
class QueryConditionsEvent with _$QueryConditionsEvent {
  const factory QueryConditionsEvent.initialized({
    required List<QueryCondition> conditions,
  }) = _Initialized;

  const factory QueryConditionsEvent.conditionAdded({
    required QueryCondition condition,
  }) = _ConditionAdded;

  const factory QueryConditionsEvent.conditionUpdated({
    required int index,
    required QueryCondition condition,
    bool? isCustom,
    String? leftField,
    String? logicalCompareType,
    String? rightField,
    String? customCondition,
  }) = _ConditionUpdated;

  const factory QueryConditionsEvent.conditionCopied({
    required QueryCondition condition,
  }) = _ConditionCopied;

  const factory QueryConditionsEvent.conditionDeleted({
    required int index,
  }) = _ConditionDeleted;

  const factory QueryConditionsEvent.conditionOrderChanged({
    required int oldIndex,
    required int newIndex,
  }) = _ConditionOrderChanged;
}
