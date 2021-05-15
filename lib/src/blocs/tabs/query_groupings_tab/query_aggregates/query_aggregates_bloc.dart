import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryAggregatesBloc
    extends Bloc<QueryAggregatesEvent, QueryAggregatesState> {
  QueryAggregatesBloc({QueryAggregatesState? initialState})
      : super(initialState ?? QueryAggregatesInitial());

  @override
  Stream<QueryAggregatesState> mapEventToState(
      QueryAggregatesEvent event) async* {
    yield QueryAggregatesInitial(aggregates: state.aggregates);

    if (event is QueryAggregatesInitialized) {
      yield QueryAggregatesChanged(aggregates: event.aggregates);
    }

    if (event is QueryAggregateAdded) {
      state.aggregates.add(event.aggregate);
      yield QueryAggregatesChanged(aggregates: state.aggregates);
    }

    if (event is QueryAggregateRemoved) {
      state.aggregates.removeAt(event.index);
      yield QueryAggregatesChanged(aggregates: state.aggregates);
    }

    if (event is QueryAggregateOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }

      final QueryAggregate item = state.aggregates.removeAt(event.oldIndex);
      state.aggregates.insert(newIndex, item);

      yield QueryAggregatesChanged(aggregates: state.aggregates);
    }
  }
}
