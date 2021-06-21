part of 'queries_bloc.dart';

@freezed
class QueriesEvent with _$QueriesEvent {
  const factory QueriesEvent.initialized({
    required List<Query> queries,
  }) = _Initialized;

  const factory QueriesEvent.queryAdded({
    required Query query,
  }) = _QueryAdded;

  const factory QueriesEvent.queryCopied({
    required Query query,
  }) = _QueryCopied;

  const factory QueriesEvent.queryDeleted({
    required int index,
  }) = _QueryDeleted;

  const factory QueriesEvent.queryOrderChanged({
    required int oldIndex,
    required int newIndex,
  }) = _QueryOrderChanged;
}
