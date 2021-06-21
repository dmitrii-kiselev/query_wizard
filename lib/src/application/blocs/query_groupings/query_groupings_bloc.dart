import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/application.dart';

@lazySingleton
class QueryGroupingsBloc
    extends Bloc<QueryGroupingsEvent, QueryGroupingsState> {
  QueryGroupingsBloc() : super(QueryGroupingsInitial());

  @override
  Stream<QueryGroupingsState> mapEventToState(
      QueryGroupingsEvent event) async* {
    yield QueryGroupingsInitial(groupings: state.groupings);

    if (event is QueryGroupingsInitialized) {
      yield* _mapQueryGroupingsInitializedToState(event);
    } else if (event is QueryGroupingAdded) {
      yield* _mapQueryGroupingAddedToState(event);
    } else if (event is QueryGroupingDeleted) {
      yield* _mapQueryGroupingDeletedToState(event);
    } else if (event is QueryGroupingOrderChanged) {
      yield* _mapQueryGroupingOrderChangedToState(event);
    }
  }

  Stream<QueryGroupingsState> _mapQueryGroupingsInitializedToState(
      QueryGroupingsInitialized event) async* {
    yield QueryGroupingsChanged(groupings: event.groupings);
  }

  Stream<QueryGroupingsState> _mapQueryGroupingAddedToState(
      QueryGroupingAdded event) async* {
    state.groupings.add(event.grouping);
    yield QueryGroupingsChanged(groupings: state.groupings);
  }

  Stream<QueryGroupingsState> _mapQueryGroupingDeletedToState(
      QueryGroupingDeleted event) async* {
    state.groupings.removeAt(event.index);
    yield QueryGroupingsChanged(groupings: state.groupings);
  }

  Stream<QueryGroupingsState> _mapQueryGroupingOrderChangedToState(
      QueryGroupingOrderChanged event) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final item = state.groupings.removeAt(event.oldIndex);
    state.groupings.insert(newIndex, item);

    yield QueryGroupingsChanged(groupings: state.groupings);
  }
}
