import 'package:equatable/equatable.dart';
import 'package:query_wizard/models.dart';

abstract class QueryTablesState extends Equatable {
  final List<DbElement> tables;

  const QueryTablesState({required this.tables});

  @override
  List<Object?> get props => [tables];
}

class QueryTablesInitial extends QueryTablesState {
  QueryTablesInitial({List<DbElement>? tables}) : super(tables: tables ?? []);
}

class QueryTablesChanged extends QueryTablesState {
  QueryTablesChanged({required List<DbElement> tables}) : super(tables: tables);
}
