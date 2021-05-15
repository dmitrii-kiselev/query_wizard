import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryBatchTabEvent extends Equatable {
  const QueryBatchTabEvent();
}

class QueryBatchesInitialized extends QueryBatchTabEvent {
  const QueryBatchesInitialized({required this.queryBatches});

  final List<QueryBatch> queryBatches;

  List<Object?> get props => [queryBatches];
}

class QueryBatchAdded extends QueryBatchTabEvent {
  const QueryBatchAdded({required this.queryBatch});

  final QueryBatch queryBatch;

  List<Object?> get props => [queryBatch];
}

class QueryBatchCopied extends QueryBatchTabEvent {
  const QueryBatchCopied({required this.queryBatch});

  final QueryBatch queryBatch;

  List<Object?> get props => [queryBatch];
}

class QueryBatchRemoved extends QueryBatchTabEvent {
  const QueryBatchRemoved({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QueryBatchOrderChanged extends QueryBatchTabEvent {
  const QueryBatchOrderChanged(
      {required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
