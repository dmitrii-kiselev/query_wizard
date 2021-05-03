import 'package:equatable/equatable.dart';
import 'package:query_wizard/models.dart';

abstract class QueryFieldsEvent extends Equatable {}

class QueryFieldsInitialized extends QueryFieldsEvent {
  final List<DbElement> fields;

  QueryFieldsInitialized({required this.fields});

  List<Object?> get props => [fields];
}

class QueryFieldAdded extends QueryFieldsEvent {
  final DbElement field;

  QueryFieldAdded({required this.field});

  List<Object?> get props => [field];
}

class QueryFieldEdited extends QueryFieldsEvent {
  final int index;
  final DbElement field;

  QueryFieldEdited({
    required this.index,
    required this.field,
  });

  List<Object?> get props => [field];
}

class QueryFieldCopied extends QueryFieldsEvent {
  final DbElement field;

  QueryFieldCopied({required this.field});

  List<Object?> get props => [field];
}

class QueryFieldRemoved extends QueryFieldsEvent {
  final int index;

  QueryFieldRemoved({required this.index});

  List<Object?> get props => [index];
}

class QueryFieldOrderChanged extends QueryFieldsEvent {
  final int oldIndex;
  final int newIndex;

  QueryFieldOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  List<Object?> get props => [oldIndex, newIndex];
}