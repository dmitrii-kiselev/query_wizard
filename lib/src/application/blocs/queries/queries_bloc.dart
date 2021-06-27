import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'queries_event.dart';

part 'queries_state.dart';

@lazySingleton
class QueriesBloc extends Bloc<QueriesEvent, QueriesState> {
  QueriesBloc() : super(QueriesInitial());

  @override
  Stream<QueriesState> mapEventToState(QueriesEvent event) async* {
    yield QueriesInitial(queries: state.queries);

    if (event is QueriesInitialized) {
      yield* _mapQueryInitializedToState(event);
    } else if (event is QueryAdded) {
      yield* _mapQueryAddedToState(event);
    } else if (event is QueryCopied) {
      yield* _mapQueryCopiedToState(event);
    } else if (event is QueryDeleted) {
      yield* _mapQueryDeletedToState(event);
    } else if (event is QueryOrderChanged) {
      yield* _mapQueryOrderChangedToState(event);
    }
  }

  Stream<QueriesState> _mapQueryInitializedToState(
    QueriesInitialized event,
  ) async* {
    yield QueriesChanged(queries: event.queries);
  }

  Stream<QueriesState> _mapQueryAddedToState(QueryAdded event) async* {
    state.queries.add(event.query);
    yield QueriesChanged(queries: state.queries);
  }

  Stream<QueriesState> _mapQueryCopiedToState(QueryCopied event) async* {
    state.queries.add(event.query.copy());
    yield QueriesChanged(queries: state.queries);
  }

  Stream<QueriesState> _mapQueryDeletedToState(QueryDeleted event) async* {
    state.queries.removeWhere((q) => q.id == event.id);
    yield QueriesChanged(queries: state.queries);
  }

  Stream<QueriesState> _mapQueryOrderChangedToState(
    QueryOrderChanged event,
  ) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final item = state.queries.removeAt(event.oldIndex);
    state.queries.insert(newIndex, item);

    yield QueriesChanged(queries: state.queries);
  }
}
