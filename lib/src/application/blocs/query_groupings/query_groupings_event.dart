part of 'query_groupings_bloc.dart';

@freezed
class QueryGroupingsEvent with _$QueryGroupingsEvent {
  const factory QueryGroupingsEvent.initialized({
    required List<QueryGrouping> groupings,
  }) = _Initialized;

  const factory QueryGroupingsEvent.groupingAdded({
    required QueryGrouping grouping,
  }) = _GroupingAdded;

  const factory QueryGroupingsEvent.groupingDeleted({
    required int index,
  }) = _GroupingDeleted;

  const factory QueryGroupingsEvent.groupingOrderChanged({
    required int oldIndex,
    required int newIndex,
  }) = _GroupingOrderChanged;
}
