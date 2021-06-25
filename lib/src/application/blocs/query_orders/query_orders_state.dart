part of 'query_orders_bloc.dart';

@freezed
class QueryOrdersState with _$QueryOrdersState {
  const factory QueryOrdersState({
    required List<QueryOrder> orders,
  }) = _QueryOrdersState;

  factory QueryOrdersState.initial() => QueryOrdersState(
        orders: List<QueryOrder>.empty(growable: true),
      );
}
