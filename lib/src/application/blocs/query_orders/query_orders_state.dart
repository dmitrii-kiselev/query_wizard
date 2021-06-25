part of 'query_orders_bloc.dart';

@freezed
class QueryOrdersState with _$QueryOrdersState {
  const factory QueryOrdersState({
    required bool isChanging,
    required List<QueryOrder> orders,
  }) = _QueryOrdersState;

  factory QueryOrdersState.initial() => QueryOrdersState(
        isChanging: false,
        orders: List<QueryOrder>.empty(growable: true),
      );
}
