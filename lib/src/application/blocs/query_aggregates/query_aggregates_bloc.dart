import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

@lazySingleton
class QueryAggregatesBloc
    extends Bloc<QueryAggregatesEvent, QueryAggregatesState> {
  QueryAggregatesBloc() : super(QueryAggregatesInitial());

  @override
  Stream<QueryAggregatesState> mapEventToState(
      QueryAggregatesEvent event) async* {
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
    }
  }

  Stream<QueryAggregatesState> _mapQueryAggregatesInitializedToState(
      QueryAggregatesInitialized event) async* {
    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }

  Stream<QueryAggregatesState> _mapQueryAggregateAddedToState(
      QueryAggregateAdded event) async* {
    state.aggregates.add(event.aggregate);
    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }

  Stream<QueryAggregatesState> _mapQueryAggregateUpdatedToState(
      QueryAggregateUpdated event) async* {
    state.aggregates.removeAt(event.index);
    state.aggregates.insert(event.index, event.aggregate);

    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }

  Stream<QueryAggregatesState> _mapQueryAggregateDeletedToState(
      QueryAggregateDeleted event) async* {
    state.aggregates.removeAt(event.index);
    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }

  Stream<QueryAggregatesState> _mapQueryAggregateOrderChangedToState(
      QueryAggregateOrderChanged event) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final QueryAggregate item = state.aggregates.removeAt(event.oldIndex);
    state.aggregates.insert(newIndex, item);

    yield QueryAggregatesChanged(aggregates: state.aggregates);
  }
}
