import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueriesEvent extends Equatable {}

class QueriesInitialized extends QueriesEvent {
  final List<Query> queries;

  QueriesInitialized({required this.queries});

  List<Object?> get props => [queries];
}

class QueryAdded extends QueriesEvent {
  final Query query;

  QueryAdded({required this.query});

  List<Object?> get props => [query];
}

class QueryCopied extends QueriesEvent {
  final Query query;

  QueryCopied({required this.query});

  List<Object?> get props => [Query];
}

class QueryRemoved extends QueriesEvent {
  final int index;

  QueryRemoved({required this.index});

  List<Object?> get props => [index];
}

class QueryOrderChanged extends QueriesEvent {
  final int oldIndex;
  final int newIndex;

  QueryOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
