part of 'query_joins_bloc.dart';

@freezed
class QueryJoinsState with _$QueryJoinsState {
  const factory QueryJoinsState({
    required bool isChanging,
    required List<QueryJoin> joins,
  }) = _QueryJoinsState;

  factory QueryJoinsState.initial() => QueryJoinsState(
        isChanging: false,
        joins: List<QueryJoin>.empty(growable: true),
      );
}
