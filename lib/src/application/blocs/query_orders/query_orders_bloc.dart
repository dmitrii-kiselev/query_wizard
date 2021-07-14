import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_orders_event.dart';

part 'query_orders_state.dart';

@lazySingleton
class QueryOrdersBloc extends Bloc<QueryOrdersEvent, QueryOrdersState> {
  QueryOrdersBloc() : super(QueryOrdersInitial());

  @override
  Stream<QueryOrdersState> mapEventToState(QueryOrdersEvent event) async* {
    yield QueryOrdersInitial(orders: state.orders);

    if (event is QueryOrdersInitialized) {
      yield* _mapQueryOrdersInitializedToState(event);
    } else if (event is QueryOrderAdded) {
      yield* _mapQueryOrderAddedToState(event);
    } else if (event is QueryOrderUpdated) {
      yield* _mapQueryOrderUpdatedToState(event);
    } else if (event is QueryOrderDeleted) {
      yield* _mapQueryOrderDeletedToState(event);
    } else if (event is QueryOrderOrderChanged) {
      yield* _mapQueryOrderOrderChangedToState(event);
    } else if (event is QueryOrdersRemoveByTableId) {
      yield* _mapQueryOrdersRemoveByTableIdToState(event);
    }
  }

  Stream<QueryOrdersState> _mapQueryOrdersInitializedToState(
    QueryOrdersInitialized event,
  ) async* {
    yield QueryOrdersChanged(orders: event.orders);
  }

  Stream<QueryOrdersState> _mapQueryOrderAddedToState(
    QueryOrderAdded event,
  ) async* {
    state.orders.add(event.order);
    yield QueryOrdersChanged(orders: state.orders);
  }

  Stream<QueryOrdersState> _mapQueryOrderUpdatedToState(
    QueryOrderUpdated event,
  ) async* {
    state.orders.update(event.order);
    yield QueryOrdersChanged(orders: state.orders);
  }

  Stream<QueryOrdersState> _mapQueryOrderDeletedToState(
    QueryOrderDeleted event,
  ) async* {
    state.orders.removeWhere((o) => o.id == event.id);
    yield QueryOrdersChanged(orders: state.orders);
  }

  Stream<QueryOrdersState> _mapQueryOrderOrderChangedToState(
    QueryOrderOrderChanged event,
  ) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final item = state.orders.removeAt(event.oldIndex);
    state.orders.insert(newIndex, item);

    yield QueryOrdersChanged(orders: state.orders);
  }

  Stream<QueryOrdersState> _mapQueryOrdersRemoveByTableIdToState(
    QueryOrdersRemoveByTableId event,
  ) async* {
    state.orders.removeWhere((f) => f.field.parent?.id == event.id);
    yield QueryOrdersChanged(orders: state.orders);
  }
}
