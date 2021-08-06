part of 'query_batches_bloc.dart';

abstract class QueryBatchesEvent extends Equatable {
  const QueryBatchesEvent();
}

class QueryBatchesInitialized extends QueryBatchesEvent {
  const QueryBatchesInitialized({required this.queryBatches});

  final List<QueryBatch> queryBatches;

  @override
  List<Object?> get props => [queryBatches];
}

class QueryBatchAdded extends QueryBatchesEvent {
  const QueryBatchAdded({required this.queryBatch});

  final QueryBatch queryBatch;

  @override
  List<Object?> get props => [queryBatch];
}

class QueryBatchCopied extends QueryBatchesEvent {
  const QueryBatchCopied({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryBatchDeleted extends QueryBatchesEvent {
  const QueryBatchDeleted({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryBatchOrderChanged extends QueryBatchesEvent {
  const QueryBatchOrderChanged({
    required this.oldIndex,
    required this.newIndex,
  });

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
