import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_orders_bloc.freezed.dart';

part 'query_orders_event.dart';

part 'query_orders_state.dart';

@lazySingleton
class QueryOrdersBloc extends Bloc<QueryOrdersEvent, QueryOrdersState> {
  QueryOrdersBloc() : super(QueryOrdersState.initial());

  @override
  Stream<QueryOrdersState> mapEventToState(QueryOrdersEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(orders: e.orders);
      },
      orderAdded: (e) async* {
        state.orders.add(e.order);
        yield state.copyWith(orders: state.orders);
      },
      orderUpdated: (e) async* {
        state.orders.removeAt(e.index);
        state.orders.insert(e.index, e.order);

        yield state.copyWith(orders: state.orders);
      },
      orderDeleted: (e) async* {
        state.orders.removeAt(e.index);
        yield state.copyWith(orders: state.orders);
      },
      orderChanged: (e) async* {
        var newIndex = e.newIndex;
        if (e.oldIndex < newIndex) {
          newIndex -= 1;
        }

        final item = state.orders.removeAt(e.oldIndex);
        state.orders.insert(newIndex, item);

        yield state.copyWith(orders: state.orders);
      },
    );
  }
}
