import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryUnionsState extends Equatable {
  const QueryUnionsState({required this.queries});

  final List<Query> queries;

  @override
  List<Object?> get props => [queries];
}

class QueryUnionsInitial extends QueryUnionsState {
  QueryUnionsInitial({List<Query>? queries}) : super(queries: queries ?? []);
}

class QueryUnionsChanged extends QueryUnionsState {
  QueryUnionsChanged({required List<Query> queries}) : super(queries: queries);
}
