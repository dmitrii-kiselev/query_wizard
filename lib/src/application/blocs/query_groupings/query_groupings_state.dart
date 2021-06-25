part of 'query_groupings_bloc.dart';

@freezed
class QueryGroupingsState with _$QueryGroupingsState {
  const factory QueryGroupingsState({
    required bool isChanging,
    required List<QueryGrouping> groupings,
  }) = _QueryGroupingsState;

  factory QueryGroupingsState.initial() => QueryGroupingsState(
        isChanging: false,
        groupings: List<QueryGrouping>.empty(growable: true),
      );
}
