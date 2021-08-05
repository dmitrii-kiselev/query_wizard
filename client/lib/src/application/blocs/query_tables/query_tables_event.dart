part of 'query_tables_bloc.dart';

abstract class QueryTablesEvent extends Equatable {
  const QueryTablesEvent();
}

class QueryTablesInitialized extends QueryTablesEvent {
  const QueryTablesInitialized({required this.tables});

  final List<QueryElement> tables;

  @override
  List<Object?> get props => [tables];
}

class QueryTableAdded extends QueryTablesEvent {
  const QueryTableAdded({required this.table});

  final QueryElement table;

  @override
  List<Object?> get props => [table];
}

class QueryTableUpdated extends QueryTablesEvent {
  const QueryTableUpdated({required this.table});

  final QueryElement table;

  @override
  List<Object?> get props => [table];
}

class QueryTableCopied extends QueryTablesEvent {
  const QueryTableCopied({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryTableDeleted extends QueryTablesEvent {
  const QueryTableDeleted({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryTableOrderChanged extends QueryTablesEvent {
  const QueryTableOrderChanged({
    required this.oldIndex,
    required this.newIndex,
  });

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
