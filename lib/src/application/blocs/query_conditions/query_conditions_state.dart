part of 'query_conditions_bloc.dart';

@freezed
class QueryConditionsState with _$QueryConditionsState {
  const factory QueryConditionsState({
    required bool isChanging,
    required List<QueryCondition> conditions,
  }) = _QueryConditionsState;

  factory QueryConditionsState.initial() => QueryConditionsState(
        isChanging: false,
        conditions: List<QueryCondition>.empty(growable: true),
      );
}
