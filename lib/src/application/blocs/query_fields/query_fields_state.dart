part of 'query_fields_bloc.dart';

abstract class QueryFieldsState extends Equatable {
  final List<QueryElement> fields;

  const QueryFieldsState({required this.fields});

  @override
  List<Object?> get props => [fields];
}

class QueryFieldsInitial extends QueryFieldsState {
  QueryFieldsInitial({List<QueryElement>? fields})
      : super(fields: fields ?? []);
}

class QueryFieldsChanged extends QueryFieldsState {
  const QueryFieldsChanged({required List<QueryElement> fields})
      : super(fields: fields);
}
