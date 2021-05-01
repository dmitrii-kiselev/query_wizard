import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueriesBloc extends Bloc<QueriesEvent, QueriesState> {
  QueriesBloc(QueriesState initialState) : super(initialState);

  @override
  Stream<QueriesState> mapEventToState(QueriesEvent event) async* {
    yield QueriesInitial(queries: state.queries);

    if (event is QueriesInitialized) {
      yield QueriesChanged(queries: event.queries);
    }

    if (event is QueryAdded) {
      state.queries.add(event.query);
      yield QueriesChanged(queries: state.queries);
    }

    if (event is QueryCopied) {
      state.queries.add(event.query.copy());
      yield QueriesChanged(queries: state.queries);
    }

    if (event is QueryRemoved) {
      state.queries.removeAt(event.index);
      yield QueriesChanged(queries: state.queries);
    }

    if (event is QueryOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }
      final item = state.queries.removeAt(event.oldIndex);
      state.queries.insert(newIndex, item);
      yield QueriesChanged(queries: state.queries);
    }
  }
}
