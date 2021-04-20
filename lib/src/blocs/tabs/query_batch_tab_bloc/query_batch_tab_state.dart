import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryBatchTabState extends Equatable {
  final List<QueryBatch> queryBatches;

  const QueryBatchTabState({required this.queryBatches});

  @override
  List<Object?> get props => [queryBatches];
}

class QueryBatchesInitial extends QueryBatchTabState {
  QueryBatchesInitial({List<QueryBatch>? queryBatches})
      : super(queryBatches: queryBatches ?? []);
}

class QueryBatchesChanged extends QueryBatchTabState {
  QueryBatchesChanged({required List<QueryBatch> queryBatches})
      : super(queryBatches: queryBatches);
}
