import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryBatchTabState extends Equatable {
  const QueryBatchTabState({required this.queryBatches});

  final List<QueryBatch> queryBatches;

  @override
  List<Object?> get props => [queryBatches];
}

class QueryBatchesInitial extends QueryBatchTabState {
  QueryBatchesInitial({List<QueryBatch>? queryBatches})
      : super(queryBatches: queryBatches ?? []);
}

class QueryBatchesChanged extends QueryBatchTabState {
  const QueryBatchesChanged({required List<QueryBatch> queryBatches})
      : super(queryBatches: queryBatches);
}
