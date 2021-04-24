import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryTablesAndFieldsTabState extends Equatable {
  final List<DbElement> sources;
  final List<DbElement> tables;
  final List<DbElement> fields;

  const QueryTablesAndFieldsTabState(
      {required this.sources, required this.tables, required this.fields});

  @override
  List<Object?> get props => [sources, tables, fields];
}

class QueryTablesAndFieldsInitial extends QueryTablesAndFieldsTabState {
  QueryTablesAndFieldsInitial(
      {List<DbElement>? sources,
      List<DbElement>? tables,
      List<DbElement>? fields})
      : super(
            sources: sources ?? [], tables: tables ?? [], fields: fields ?? []);
}

class QueryTablesAndFieldsTabChanged extends QueryTablesAndFieldsTabState {
  QueryTablesAndFieldsTabChanged(
      {required List<DbElement> sources,
      required List<DbElement> tables,
      required List<DbElement> fields})
      : super(sources: sources, tables: tables, fields: fields);
}
