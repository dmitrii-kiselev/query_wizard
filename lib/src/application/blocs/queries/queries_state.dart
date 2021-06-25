part of 'queries_bloc.dart';

@freezed
class QueriesState with _$QueriesState {
  const factory QueriesState({required List<Query> queries}) = _QueriesState;

  factory QueriesState.initial() => QueriesState(
        queries: List<Query>.empty(growable: true),
      );
}
