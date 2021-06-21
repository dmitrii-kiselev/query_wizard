part of 'query_more_bloc.dart';

@freezed
class QueryMoreEvent with _$QueryMoreEvent {
  const factory QueryMoreEvent.initialized({
    required bool isTop,
    required int topCounter,
    required bool isDistinct,
    required QueryType queryType,
    required String tempTableName,
  }) = _Initialized;

  const factory QueryMoreEvent.changed({
    required bool isTop,
    required int topCounter,
    required bool isDistinct,
    required QueryType queryType,
    required String tempTableName,
  }) = _Changed;
}
