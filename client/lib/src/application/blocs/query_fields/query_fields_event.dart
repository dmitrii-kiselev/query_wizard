part of 'query_fields_bloc.dart';

abstract class QueryFieldsEvent extends Equatable {
  const QueryFieldsEvent();
}

class QueryFieldsInitialized extends QueryFieldsEvent {
  const QueryFieldsInitialized({required this.fields});

  final List<QueryElement> fields;

  @override
  List<Object?> get props => [fields];
}

class QueryFieldAdded extends QueryFieldsEvent {
  const QueryFieldAdded({required this.field});

  final QueryElement field;

  @override
  List<Object?> get props => [field];
}

class QueryFieldUpdated extends QueryFieldsEvent {
  const QueryFieldUpdated({required this.field});

  final QueryElement field;

  @override
  List<Object?> get props => [field];
}

class QueryFieldCopied extends QueryFieldsEvent {
  const QueryFieldCopied({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryFieldDeleted extends QueryFieldsEvent {
  const QueryFieldDeleted({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryFieldOrderChanged extends QueryFieldsEvent {
  const QueryFieldOrderChanged({
    required this.oldIndex,
    required this.newIndex,
  });

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}

class QueryFieldsRemoveByTableId extends QueryFieldsEvent {
  const QueryFieldsRemoveByTableId({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}
