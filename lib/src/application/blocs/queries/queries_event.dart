import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

abstract class QueriesEvent extends Equatable {}

class QueriesInitialized extends QueriesEvent {
  QueriesInitialized({required this.queries});

  final List<Query> queries;

  List<Object?> get props => [queries];
}

class QueryAdded extends QueriesEvent {
  QueryAdded({required this.query});

  final Query query;

  List<Object?> get props => [query];
}

class QueryCopied extends QueriesEvent {
  QueryCopied({required this.query});

  final Query query;

  List<Object?> get props => [Query];
}

class QueryDeleted extends QueriesEvent {
  QueryDeleted({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QueryOrderChanged extends QueriesEvent {
  QueryOrderChanged({required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
