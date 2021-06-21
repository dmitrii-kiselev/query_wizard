part of 'query_orders_bloc.dart';

@freezed
class QueryOrdersEvent with _$QueryOrdersEvent {
  const factory QueryOrdersEvent.initialized({
    required List<QueryOrder> orders,
  }) = _Initialized;

  const factory QueryOrdersEvent.orderAdded({
    required QueryOrder order,
  }) = _OrderAdded;

  const factory QueryOrdersEvent.orderUpdated({
    required int index,
    required QueryOrder order,
  }) = _OrderUpdated;

  const factory QueryOrdersEvent.orderDeleted({
    required int index,
  }) = _OrderDeleted;

  const factory QueryOrdersEvent.orderChanged({
    required int oldIndex,
    required int newIndex,
  }) = _OrderOrderChanged;
}
