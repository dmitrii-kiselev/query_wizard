import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

abstract class QueriesState extends Equatable {
  const QueriesState({required this.queries});

  final List<Query> queries;

  @override
  List<Object?> get props => [queries];
}

class QueriesInitial extends QueriesState {
  QueriesInitial({List<Query>? queries}) : super(queries: queries ?? []);
}

class QueriesChanged extends QueriesState {
  QueriesChanged({required List<Query> queries}) : super(queries: queries);
}
