part of 'query_groupings_bloc.dart';

@freezed
class QueryGroupingsState with _$QueryGroupingsState {
  const factory QueryGroupingsState({
    required List<QueryGrouping> groupings,
  }) = _QueryGroupingsState;

  factory QueryGroupingsState.initial() => QueryGroupingsState(
        groupings: List<QueryGrouping>.empty(growable: true),
      );
}
