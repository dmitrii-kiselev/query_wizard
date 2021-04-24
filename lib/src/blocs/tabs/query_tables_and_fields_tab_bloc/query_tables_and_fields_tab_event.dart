import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryTablesAndFieldsTabEvent extends Equatable {}

class QueryTablesAndFieldsTabInitialized extends QueryTablesAndFieldsTabEvent {
  final List<DbElement> sources;
  final List<DbElement> tables;
  final List<DbElement> fields;

  QueryTablesAndFieldsTabInitialized(
      {required this.sources, required this.tables, required this.fields});

  List<Object?> get props => [sources, tables, fields];
}
