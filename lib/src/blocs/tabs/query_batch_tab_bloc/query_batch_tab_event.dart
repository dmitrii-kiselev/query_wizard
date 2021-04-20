import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryBatchTabEvent extends Equatable {}

class QueryBatchesInitialized extends QueryBatchTabEvent {
  final List<QueryBatch> queryBatches;

  QueryBatchesInitialized({required this.queryBatches});

  List<Object?> get props => [queryBatches];
}

class QueryBatchAdded extends QueryBatchTabEvent {
  final QueryBatch queryBatch;

  QueryBatchAdded({required this.queryBatch});

  List<Object?> get props => [queryBatch];
}

class QueryBatchCopied extends QueryBatchTabEvent {
  final QueryBatch queryBatch;

  QueryBatchCopied({required this.queryBatch});

  List<Object?> get props => [queryBatch];
}

class QueryBatchRemoved extends QueryBatchTabEvent {
  final int index;

  QueryBatchRemoved({required this.index});

  List<Object?> get props => [index];
}

class QueryBatchOrderChanged extends QueryBatchTabEvent {
  final int oldIndex;
  final int newIndex;

  QueryBatchOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
