import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryUnionsBloc extends Bloc<QueryUnionsEvent, QueryUnionsState> {
  QueryUnionsBloc({QueryUnionsState? initialState})
      : super(initialState ?? QueryUnionsInitial());

  @override
  Stream<QueryUnionsState> mapEventToState(QueryUnionsEvent event) async* {
    yield QueryUnionsInitial(queries: state.queries);

    if (event is QueriesInitialized) {
      yield QueryUnionsChanged(queries: event.queries);
    }

    if (event is QueryAdded) {
      state.queries.add(event.query);
      yield QueryUnionsChanged(queries: state.queries);
    }

    if (event is QueryCopied) {
      state.queries.add(event.query.copy());
      yield QueryUnionsChanged(queries: state.queries);
    }

    if (event is QueryRemoved) {
      state.queries.removeAt(event.index);
      yield QueryUnionsChanged(queries: state.queries);
    }

    if (event is QueryOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }
      final item = state.queries.removeAt(event.oldIndex);
      state.queries.insert(newIndex, item);
      yield QueryUnionsChanged(queries: state.queries);
    }
  }
}
