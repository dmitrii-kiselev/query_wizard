part of 'query_fields_bloc.dart';

@freezed
class QueryFieldsState with _$QueryFieldsState {
  const factory QueryFieldsState({
    required List<QueryElement> fields,
  }) = _QueryFieldsState;

  factory QueryFieldsState.initial() => QueryFieldsState(
        fields: List<QueryElement>.empty(growable: true),
      );
}
