part of 'query_batches_bloc.dart';

@freezed
class QueryBatchesState with _$QueryBatchesState {
  const factory QueryBatchesState({
    required bool isChanging,
    required List<QueryBatch> batches,
  }) = _QueryBatchesState;

  factory QueryBatchesState.initial() => QueryBatchesState(
        isChanging: false,
        batches: List<QueryBatch>.empty(growable: true),
      );
}
