part of 'query_tables_bloc.dart';

@freezed
class QueryTablesEvent with _$QueryTablesEvent {
  const factory QueryTablesEvent.initialized({
    required List<QueryElement> tables,
  }) = _Initialized;

  const factory QueryTablesEvent.tableAdded({
    required QueryElement table,
  }) = _QueryTablesAdded;

  const factory QueryTablesEvent.tableUpdated({
    required int index,
    required QueryElement table,
  }) = _QueryTableUpdated;

  const factory QueryTablesEvent.tableCopied({
    required QueryElement table,
  }) = _QueryTablesCopied;

  const factory QueryTablesEvent.tableDeleted({
    required int index,
  }) = _QueryTablesDeleted;

  const factory QueryTablesEvent.tableOrderChanged({
    required int oldIndex,
    required int newIndex,
  }) = _QueryTablesOrderChanged;
}
