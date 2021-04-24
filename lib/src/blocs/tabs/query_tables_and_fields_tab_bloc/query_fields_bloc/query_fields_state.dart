import 'package:equatable/equatable.dart';

abstract class QueryFieldsState extends Equatable {
  final List<String> fields;

  const QueryFieldsState({required this.fields});

  @override
  List<Object?> get props => [fields];
}

class QueryFieldsInitial extends QueryFieldsState {
  QueryFieldsInitial({List<String>? fields}) : super(fields: fields ?? []);
}

class QueryFieldsChanged extends QueryFieldsState {
  QueryFieldsChanged({required List<String> fields}) : super(fields: fields);
}
