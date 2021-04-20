import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QuerySourcesState extends Equatable {
  const QuerySourcesState();

  @override
  List<Object> get props => [];
}

class QuerySourcesInitial extends QuerySourcesState {}

class QuerySourcesLoadInProgress extends QuerySourcesState {}

class QuerySourcesLoadSuccess extends QuerySourcesState {
  final List<DbElement> dbElements;

  const QuerySourcesLoadSuccess({required this.dbElements});

  @override
  List<Object> get props => [dbElements];
}

class QuerySourcesLoadFailure extends QuerySourcesState {}
