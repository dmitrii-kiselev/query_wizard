import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';

class QueryGroupingsBloc
    extends Bloc<QueryGroupingsEvent, QueryGroupingsState> {
  QueryGroupingsBloc(QueryGroupingsState initialState) : super(initialState);

  @override
  Stream<QueryGroupingsState> mapEventToState(
      QueryGroupingsEvent event) async* {
    yield QueryGroupingsInitial(groupings: state.groupings);

    if (event is QueryGroupingsInitialized) {
      yield QueryGroupingsChanged(groupings: event.groupings);
    }

    if (event is QueryGroupingAdded) {
      state.groupings.add(event.grouping);
      yield QueryGroupingsChanged(groupings: state.groupings);
    }

    if (event is QueryGroupingRemoved) {
      state.groupings.removeAt(event.index);
      yield QueryGroupingsChanged(groupings: state.groupings);
    }

    if (event is QueryGroupingOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }
      final item = state.groupings.removeAt(event.oldIndex);
      state.groupings.insert(newIndex, item);
      yield QueryGroupingsChanged(groupings: state.groupings);
    }
  }
}
