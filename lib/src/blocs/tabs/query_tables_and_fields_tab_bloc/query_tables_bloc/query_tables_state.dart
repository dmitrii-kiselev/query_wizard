import 'package:equatable/equatable.dart';

abstract class QueryTablesState extends Equatable {
  final List<String> tables;

  const QueryTablesState({required this.tables});

  @override
  List<Object?> get props => [tables];
}

class QueryTablesInitial extends QueryTablesState {
  QueryTablesInitial({List<String>? tables}) : super(tables: tables ?? []);
}

class QueryTablesChanged extends QueryTablesState {
  QueryTablesChanged({required List<String> tables}) : super(tables: tables);
}
