part of 'query_more_bloc.dart';

@freezed
class QueryMoreState with _$QueryMoreState {
  const factory QueryMoreState({
    required bool isChanging,
    required bool isTop,
    required int topCounter,
    required bool isDistinct,
    required QueryType queryType,
    required String tempTableName,
  }) = _QueryMoreState;

  factory QueryMoreState.initial() => const QueryMoreState(
        isChanging: false,
        isTop: false,
        topCounter: 0,
        isDistinct: false,
        queryType: QueryType.selectQuery,
        tempTableName: '',
      );
}
