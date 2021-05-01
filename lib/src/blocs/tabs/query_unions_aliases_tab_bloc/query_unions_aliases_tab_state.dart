import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueriesState extends Equatable {
  final List<Query> queries;

  const QueriesState({required this.queries});

  @override
  List<Object?> get props => [queries];
}

class QueriesInitial extends QueriesState {
  QueriesInitial({List<Query>? queries}) : super(queries: queries ?? []);
}

class QueriesChanged extends QueriesState {
  QueriesChanged({required List<Query> queries}) : super(queries: queries);
}
