part of 'query_batches_bloc.dart';

@freezed
class QueryBatchesState with _$QueryBatchesState {
  const factory QueryBatchesState({
    required List<QueryBatch> batches,
  }) = _QueryBatchesState;

  factory QueryBatchesState.initial() => QueryBatchesState(
        batches: List<QueryBatch>.empty(growable: true),
      );
}
