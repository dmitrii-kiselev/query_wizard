part of 'query_fields_bloc.dart';

@freezed
class QueryFieldsEvent with _$QueryFieldsEvent {
  const factory QueryFieldsEvent.initialized({
    required List<QueryElement> fields,
  }) = _Initialized;

  const factory QueryFieldsEvent.fieldAdded({
    required QueryElement field,
  }) = _QueryFieldAdded;

  const factory QueryFieldsEvent.fieldUpdated({
    required int index,
    required QueryElement field,
  }) = _FieldUpdated;

  const factory QueryFieldsEvent.fieldCopied({
    required QueryElement field,
  }) = _FieldCopied;

  const factory QueryFieldsEvent.fieldDeleted({
    required int index,
  }) = _FieldDeleted;

  const factory QueryFieldsEvent.fieldOrderChanged({
    required int oldIndex,
    required int newIndex,
  }) = _FieldOrderChanged;
}
