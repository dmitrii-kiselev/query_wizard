part of 'query_sources_bloc.dart';

@freezed
abstract class QuerySourcesState with _$QuerySourcesState {
  const factory QuerySourcesState({
    required List<QueryElement> sources,
  }) = _QueryFieldsState;

  factory QuerySourcesState.initial() => QuerySourcesState(
        sources: List<QueryElement>.empty(growable: true),
      );

  const factory QuerySourcesState.loadInProgress() = _LoadInProgress;

  const factory QuerySourcesState.loadSuccess({
    required List<QueryElement> sources,
  }) = _LoadSuccess;

  const factory QuerySourcesState.loadFailure() = _LoadFailure;

  const factory QuerySourcesState.sourcesChanged({
    required List<QueryElement> sources,
  }) = SourcesChanged;
}
