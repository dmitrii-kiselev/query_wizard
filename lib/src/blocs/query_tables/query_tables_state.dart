import 'package:equatable/equatable.dart';
import 'package:query_wizard/models.dart';

abstract class QueryTablesState extends Equatable {
  QueryTablesState({required this.tables});

  final List<QueryElement> tables;

  @override
  List<Object?> get props => [tables];
}

class QueryTablesInitial extends QueryTablesState {
  QueryTablesInitial({List<QueryElement>? tables})
      : super(tables: tables ?? []);
}

class QueryTablesChanged extends QueryTablesState {
  QueryTablesChanged({required List<QueryElement> tables})
      : super(tables: tables);
}
