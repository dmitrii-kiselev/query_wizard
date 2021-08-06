part of 'query_sources_bloc.dart';

abstract class QuerySourcesEvent extends Equatable {
  const QuerySourcesEvent();
}

class QuerySourcesInitialized extends QuerySourcesEvent {
  const QuerySourcesInitialized({required this.sources});

  final List<QueryElement> sources;

  @override
  List<Object?> get props => [sources];
}

class QuerySourcesRequested extends QuerySourcesEvent {
  const QuerySourcesRequested();

  @override
  List<Object> get props => [];
}
