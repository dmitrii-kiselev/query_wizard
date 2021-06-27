import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_tables_event.dart';

part 'query_tables_state.dart';

@lazySingleton
class QueryTablesBloc extends Bloc<QueryTablesEvent, QueryTablesState> {
  QueryTablesBloc() : super(QueryTablesInitial());

  @override
  Stream<QueryTablesState> mapEventToState(QueryTablesEvent event) async* {
    yield QueryTablesInitial(tables: state.tables);

    if (event is QueryTablesInitialized) {
      yield* _mapQueryTablesInitializedToState(event);
    } else if (event is QueryTableAdded) {
      yield* _mapQueryTableAddedToState(event);
    } else if (event is QueryTableUpdated) {
      yield* _mapQueryTableUpdatedToState(event);
    } else if (event is QueryTableCopied) {
      yield* _mapQueryTableCopiedToState(event);
    } else if (event is QueryTableDeleted) {
      yield* _mapQueryTableDeletedToState(event);
    } else if (event is QueryTableOrderChanged) {
      yield* _mapQueryTableOrderChangedToState(event);
    }
  }

  Stream<QueryTablesState> _mapQueryTablesInitializedToState(
    QueryTablesInitialized event,
  ) async* {
    yield QueryTablesChanged(tables: event.tables);
  }

  Stream<QueryTablesState> _mapQueryTableAddedToState(
    QueryTableAdded event,
  ) async* {
    state.tables.add(event.table);
    yield QueryTablesChanged(tables: state.tables);
  }

  Stream<QueryTablesState> _mapQueryTableUpdatedToState(
    QueryTableUpdated event,
  ) async* {
    state.tables.update(event.table);
    yield QueryTablesChanged(tables: state.tables);
  }

  Stream<QueryTablesState> _mapQueryTableCopiedToState(
    QueryTableCopied event,
  ) async* {
    yield QueryTablesChanged(tables: state.tables);
  }

  Stream<QueryTablesState> _mapQueryTableDeletedToState(
    QueryTableDeleted event,
  ) async* {
    state.tables.removeWhere((t) => t.id == event.id);
    yield QueryTablesChanged(tables: state.tables);
  }

  Stream<QueryTablesState> _mapQueryTableOrderChangedToState(
    QueryTableOrderChanged event,
  ) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final table = state.tables.removeAt(event.oldIndex);
    state.tables.insert(newIndex, table);

    yield QueryTablesChanged(tables: state.tables);
  }
}
