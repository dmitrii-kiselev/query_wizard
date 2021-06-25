part of 'query_tables_bloc.dart';

@freezed
class QueryTablesState with _$QueryTablesState {
  const factory QueryTablesState({
    required List<QueryElement> tables,
  }) = _QueryTablesState;

  factory QueryTablesState.initial() => QueryTablesState(
        tables: List<QueryElement>.empty(growable: true),
      );
}
