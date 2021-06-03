import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';

class QueryOrderTabBloc extends Bloc<QueryOrderTabEvent, QueryOrderTabState> {
  QueryOrderTabBloc({QueryOrderTabState? initialState})
      : super(initialState ?? QueryOrderTabInitial());

  @override
  Stream<QueryOrderTabState> mapEventToState(QueryOrderTabEvent event) async* {
    yield QueryOrderTabInitial(sortings: state.sortings);

    if (event is QueryOrderTabInitialized) {
      yield QuerySortingsChanged(sortings: event.sortings);
    }

    if (event is QuerySortingAdded) {
      state.sortings.add(event.sorting);
      yield QuerySortingsChanged(sortings: state.sortings);
    }

    if (event is QuerySortingEdited) {
      state.sortings.removeAt(event.index);
      state.sortings.insert(event.index, event.sorting);

      yield QuerySortingsChanged(sortings: state.sortings);
    }

    if (event is QuerySortingRemoved) {
      state.sortings.removeAt(event.index);
      yield QuerySortingsChanged(sortings: state.sortings);
    }

    if (event is QuerySortingOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }

      final item = state.sortings.removeAt(event.oldIndex);
      state.sortings.insert(newIndex, item);

      yield QuerySortingsChanged(sortings: state.sortings);
    }
  }
}
