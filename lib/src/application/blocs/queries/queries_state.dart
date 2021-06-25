part of 'queries_bloc.dart';

@freezed
class QueriesState with _$QueriesState {
  const factory QueriesState({
    required bool isChanging,
    required List<Query> queries,
  }) = _QueriesState;

  factory QueriesState.initial() => QueriesState(
        isChanging: false,
        queries: List<Query>.empty(growable: true),
      );
}
