import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QuerySourcesState extends Equatable {
  final List<DbElement> sources;

  const QuerySourcesState({required this.sources});

  @override
  List<Object?> get props => [sources];
}

class QuerySourcesInitial extends QuerySourcesState {
  QuerySourcesInitial({List<DbElement>? sources})
      : super(sources: sources ?? []);
}

class QuerySourcesLoadInProgress extends QuerySourcesState {
  QuerySourcesLoadInProgress() : super(sources: []);
}

class QuerySourcesLoadSuccess extends QuerySourcesState {
  final List<DbElement> sources;

  const QuerySourcesLoadSuccess({required this.sources})
      : super(sources: sources);

  @override
  List<Object> get props => [sources];
}

class QuerySourcesLoadFailure extends QuerySourcesState {
  QuerySourcesLoadFailure() : super(sources: []);
}

class QuerySourcesChanged extends QuerySourcesState {
  QuerySourcesChanged({required List<DbElement> sources})
      : super(sources: sources);
}
