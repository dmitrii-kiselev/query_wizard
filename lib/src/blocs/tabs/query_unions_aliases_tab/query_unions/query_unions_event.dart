import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryUnionsEvent extends Equatable {}

class QueriesInitialized extends QueryUnionsEvent {
  QueriesInitialized({required this.queries});

  final List<Query> queries;

  List<Object?> get props => [queries];
}

class QueryAdded extends QueryUnionsEvent {
  QueryAdded({required this.query});

  final Query query;

  List<Object?> get props => [query];
}

class QueryCopied extends QueryUnionsEvent {
  QueryCopied({required this.query});

  final Query query;

  List<Object?> get props => [Query];
}

class QueryRemoved extends QueryUnionsEvent {
  QueryRemoved({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QueryOrderChanged extends QueryUnionsEvent {
  QueryOrderChanged({required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
