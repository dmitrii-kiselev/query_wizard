import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

abstract class QueryFieldsEvent extends Equatable {
  const QueryFieldsEvent();
}

class QueryFieldsInitialized extends QueryFieldsEvent {
  const QueryFieldsInitialized({required this.fields});

  final List<QueryElement> fields;

  List<Object?> get props => [fields];
}

class QueryFieldAdded extends QueryFieldsEvent {
  const QueryFieldAdded({required this.field});

  final QueryElement field;

  List<Object?> get props => [field];
}

class QueryFieldUpdated extends QueryFieldsEvent {
  QueryFieldUpdated({
    required this.index,
    required this.field,
  });

  final int index;
  final QueryElement field;

  List<Object?> get props => [field];
}

class QueryFieldCopied extends QueryFieldsEvent {
  const QueryFieldCopied({required this.field});

  final QueryElement field;

  List<Object?> get props => [field];
}

class QueryFieldDeleted extends QueryFieldsEvent {
  const QueryFieldDeleted({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QueryFieldOrderChanged extends QueryFieldsEvent {
  const QueryFieldOrderChanged(
      {required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
