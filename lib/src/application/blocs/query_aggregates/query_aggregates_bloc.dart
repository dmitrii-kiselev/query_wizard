import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_aggregates_event.dart';

part 'query_aggregates_state.dart';

@lazySingleton
class QueryAggregatesBloc
    extends Bloc<QueryAggregatesEvent, QueryAggregatesState> {
  QueryAggregatesBloc() : super(QueryAggregatesInitial());

  @override
  Stream<QueryAggregatesState> mapEventToState(
    QueryAggregatesEvent event,
  ) async* {
    yield QueryAggregatesInitial(aggregates: state.aggregates);

    if (event is QueryAggregatesInitialized) {
      yield* _mapQueryAggregatesInitializedToState(event);
    } else if (event is QueryAggregateAdded) {
      yield* _mapQueryAggregateAddedToState(event);
    } else if (event is QueryAggregateUpdated) {
      yield* _mapQueryAggregateUpdatedToState(event);
    } else if (event is QueryAggregateDeleted) {
      yield* _mapQueryAggregateDeletedToState(event);
    } else if (event is QueryAggregateOrderChanged) {
      yield* _mapQueryAggregateOrderChangedToState(event);
    } else if (event is QueryAggregatesRemoveByTableId) {
      yield* _mapQueryAggregatesRemoveByTableIdToState(event);
    }
  }

  Stream<QueryAggregatesState> _mapQueryAggregatesInitializedToState(
    QueryAggregatesInitialized event,
  ) async* {
    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }

  Stream<QueryAggregatesState> _mapQueryAggregateAddedToState(
    QueryAggregateAdded event,
  ) async* {
    state.aggregates.add(event.aggregate);
    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }

  Stream<QueryAggregatesState> _mapQueryAggregateUpdatedToState(
    QueryAggregateUpdated event,
  ) async* {
    state.aggregates.update(event.aggregate);
    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }

  Stream<QueryAggregatesState> _mapQueryAggregateDeletedToState(
    QueryAggregateDeleted event,
  ) async* {
    state.aggregates.removeWhere((a) => a.id == event.id);
    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }

  Stream<QueryAggregatesState> _mapQueryAggregateOrderChangedToState(
    QueryAggregateOrderChanged event,
  ) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final QueryAggregate item = state.aggregates.removeAt(event.oldIndex);
    state.aggregates.insert(newIndex, item);

    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }

  Stream<QueryAggregatesState> _mapQueryAggregatesRemoveByTableIdToState(
    QueryAggregatesRemoveByTableId event,
  ) async* {
    state.aggregates.removeWhere((f) => f.field.parent?.id == event.id);
    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }
}
