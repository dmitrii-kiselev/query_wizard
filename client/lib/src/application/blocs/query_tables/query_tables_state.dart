part of 'query_tables_bloc.dart';

abstract class QueryTablesState extends Equatable {
  const QueryTablesState({required this.tables});

  final List<QueryElement> tables;

  @override
  List<Object?> get props => [tables];
}

class QueryTablesInitial extends QueryTablesState {
  QueryTablesInitial({List<QueryElement>? tables})
      : super(tables: tables ?? []);
}

class QueryTablesChanged extends QueryTablesState {
  const QueryTablesChanged({required List<QueryElement> tables})
      : super(tables: tables);
}
