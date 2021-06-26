part of 'query_batches_bloc.dart';

abstract class QueryBatchesState extends Equatable {
  const QueryBatchesState({required this.queryBatches});

  final List<QueryBatch> queryBatches;

  @override
  List<Object?> get props => [queryBatches];
}

class QueryBatchesInitial extends QueryBatchesState {
  QueryBatchesInitial({List<QueryBatch>? queryBatches})
      : super(queryBatches: queryBatches ?? []);
}

class QueryBatchesChanged extends QueryBatchesState {
  const QueryBatchesChanged({required List<QueryBatch> queryBatches})
      : super(queryBatches: queryBatches);
}
