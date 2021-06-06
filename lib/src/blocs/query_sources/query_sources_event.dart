import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QuerySourcesEvent extends Equatable {
  const QuerySourcesEvent();
}

class QuerySourcesInitialized extends QuerySourcesEvent {
  QuerySourcesInitialized({required this.sources});

  final List<DbElement> sources;

  List<Object?> get props => [sources];
}

class QuerySourcesRequested extends QuerySourcesEvent {
  const QuerySourcesRequested();

  @override
  List<Object> get props => [];
}
