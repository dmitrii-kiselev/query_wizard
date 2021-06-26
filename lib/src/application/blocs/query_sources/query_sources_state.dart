part of 'query_sources_bloc.dart';

abstract class QuerySourcesState extends Equatable {
  const QuerySourcesState({required this.sources});

  final List<QueryElement> sources;

  @override
  List<Object?> get props => [sources];
}

class QuerySourcesInitial extends QuerySourcesState {
  QuerySourcesInitial({List<QueryElement>? sources})
      : super(sources: sources ?? []);
}

class QuerySourcesLoadInProgress extends QuerySourcesState {
  QuerySourcesLoadInProgress() : super(sources: []);
}

class QuerySourcesLoadSuccess extends QuerySourcesState {
  const QuerySourcesLoadSuccess({required List<QueryElement> sources})
      : super(sources: sources);

  @override
  List<Object> get props => [sources];
}

class QuerySourcesLoadFailure extends QuerySourcesState {
  QuerySourcesLoadFailure() : super(sources: []);
}

class QuerySourcesChanged extends QuerySourcesState {
  const QuerySourcesChanged({required List<QueryElement> sources})
      : super(sources: sources);
}
