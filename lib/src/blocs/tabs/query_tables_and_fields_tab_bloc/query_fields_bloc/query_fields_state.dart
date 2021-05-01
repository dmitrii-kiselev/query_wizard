import 'package:equatable/equatable.dart';
import 'package:query_wizard/models.dart';

abstract class QueryFieldsState extends Equatable {
  final List<DbElement> fields;

  const QueryFieldsState({required this.fields});

  @override
  List<Object?> get props => [fields];
}

class QueryFieldsInitial extends QueryFieldsState {
  QueryFieldsInitial({List<DbElement>? fields}) : super(fields: fields ?? []);
}

class QueryFieldsChanged extends QueryFieldsState {
  QueryFieldsChanged({required List<DbElement> fields}) : super(fields: fields);
}
