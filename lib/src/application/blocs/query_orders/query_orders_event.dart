part of 'query_orders_bloc.dart';

abstract class QueryOrdersEvent extends Equatable {
  const QueryOrdersEvent();
}

class QueryOrdersInitialized extends QueryOrdersEvent {
  const QueryOrdersInitialized({required this.orders});

  final List<QueryOrder> orders;

  @override
  List<Object?> get props => [orders];
}

class QueryOrderAdded extends QueryOrdersEvent {
  const QueryOrderAdded({required this.order});

  final QueryOrder order;

  @override
  List<Object?> get props => [order];
}

class QueryOrderUpdated extends QueryOrdersEvent {
  const QueryOrderUpdated({required this.order});

  final QueryOrder order;

  @override
  List<Object?> get props => [order];
}

class QueryOrderDeleted extends QueryOrdersEvent {
  const QueryOrderDeleted({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryOrderOrderChanged extends QueryOrdersEvent {
  const QueryOrderOrderChanged({
    required this.oldIndex,
    required this.newIndex,
  });

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
