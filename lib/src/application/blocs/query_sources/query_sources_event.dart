part of 'query_sources_bloc.dart';

@freezed
class QuerySourcesEvent with _$QuerySourcesEvent {
  const factory QuerySourcesEvent.initialized({
    required List<QueryElement> sources,
  }) = _Initialized;

  const factory QuerySourcesEvent.sourcesRequested() = _SourcesRequested;
}
