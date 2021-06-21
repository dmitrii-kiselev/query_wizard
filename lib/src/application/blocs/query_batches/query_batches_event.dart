part of 'query_batches_bloc.dart';

@freezed
class QueryBatchesEvent with _$QueryBatchesEvent {
  const factory QueryBatchesEvent.initialized({
    required List<QueryBatch> batches,
  }) = _Initialized;

  const factory QueryBatchesEvent.batchAdded({
    required QueryBatch batch,
  }) = _BatchAdded;

  const factory QueryBatchesEvent.batchCopied({
    required QueryBatch batch,
  }) = _BatchCopied;

  const factory QueryBatchesEvent.batchDeleted({
    required int index,
  }) = _BatchDeleted;

  const factory QueryBatchesEvent.batchOrderChanged({
    required int oldIndex,
    required int newIndex,
  }) = _BatchOrderChanged;
}
