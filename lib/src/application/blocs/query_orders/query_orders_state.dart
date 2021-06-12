import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

abstract class QueryOrdersState extends Equatable {
  const QueryOrdersState({required this.orders});

  final List<QueryOrder> orders;

  @override
  List<Object?> get props => [orders];
}

class QueryOrdersInitial extends QueryOrdersState {
  QueryOrdersInitial({List<QueryOrder>? orders}) : super(orders: orders ?? []);
}

class QueryOrdersChanged extends QueryOrdersState {
  const QueryOrdersChanged({required List<QueryOrder> orders})
      : super(orders: orders);
}
