import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';

class QueryTablesBloc extends Bloc<QueryTablesEvent, QueryTablesState> {
  QueryTablesBloc(initialState) : super(initialState);

  @override
  Stream<QueryTablesState> mapEventToState(QueryTablesEvent event) async* {
    yield QueryTablesInitial(tables: state.tables);

    if (event is QueryTablesInitialized) {
      state.tables.clear();
      state.tables.addAll(event.tables);

      yield QueryTablesChanged(tables: state.tables);
    }

    if (event is QueryTableAdded) {
      state.tables.add(event.table);
      yield QueryTablesChanged(tables: state.tables);
    }

    if (event is QueryTableEdited) {
      state.tables.removeAt(event.index);
      state.tables.insert(event.index, event.table);

      yield QueryTablesChanged(tables: state.tables);
    }

    if (event is QueryTableCopied) {
      state.tables.add(event.table);
      yield QueryTablesChanged(tables: state.tables);
    }

    if (event is QueryTableRemoved) {
      state.tables.removeAt(event.index);
      yield QueryTablesChanged(tables: state.tables);
    }

    if (event is QueryTableOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }

      final String table = state.tables.removeAt(event.oldIndex);
      state.tables.insert(newIndex, table);

      yield QueryTablesChanged(tables: state.tables);
    }
  }
}
