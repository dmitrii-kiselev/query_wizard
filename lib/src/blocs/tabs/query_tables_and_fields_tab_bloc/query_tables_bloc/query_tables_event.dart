import 'package:equatable/equatable.dart';

abstract class QueryTablesEvent extends Equatable {}

class QueryTablesInitialized extends QueryTablesEvent {
  final List<String> tables;

  QueryTablesInitialized({required this.tables});

  List<Object?> get props => [tables];
}

class QueryTableAdded extends QueryTablesEvent {
  final String table;

  QueryTableAdded({required this.table});

  List<Object?> get props => [table];
}

class QueryTableEdited extends QueryTablesEvent {
  final int index;
  final String table;

  QueryTableEdited({
    required this.index,
    required this.table,
  });

  List<Object?> get props => [table];
}

class QueryTableCopied extends QueryTablesEvent {
  final String table;

  QueryTableCopied({required this.table});

  List<Object?> get props => [table];
}

class QueryTableRemoved extends QueryTablesEvent {
  final int index;

  QueryTableRemoved({required this.index});

  List<Object?> get props => [index];
}

class QueryTableOrderChanged extends QueryTablesEvent {
  final int oldIndex;
  final int newIndex;

  QueryTableOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
