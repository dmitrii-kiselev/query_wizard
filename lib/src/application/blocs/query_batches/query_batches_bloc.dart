import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_batches_event.dart';

part 'query_batches_state.dart';

@lazySingleton
class QueryBatchesBloc extends Bloc<QueryBatchesEvent, QueryBatchesState> {
  QueryBatchesBloc() : super(QueryBatchesInitial());

  @override
  Stream<QueryBatchesState> mapEventToState(QueryBatchesEvent event) async* {
    yield QueryBatchesInitial(queryBatches: state.queryBatches);

    if (event is QueryBatchesInitialized) {
      yield* _mapQueryBatchesInitializedToState(event);
    } else if (event is QueryBatchAdded) {
      yield* _mapQueryBatchAddedToState(event);
    } else if (event is QueryBatchCopied) {
      yield* _mapQueryBatchCopiedToState(event);
    } else if (event is QueryBatchDeleted) {
      yield* _mapQueryBatchDeletedToState(event);
    } else if (event is QueryBatchOrderChanged) {
      yield* _mapQueryBatchOrderChangedToState(event);
    }
  }

  Stream<QueryBatchesState> _mapQueryBatchesInitializedToState(
    QueryBatchesInitialized event,
  ) async* {
    yield QueryBatchesChanged(queryBatches: event.queryBatches);
  }

  Stream<QueryBatchesState> _mapQueryBatchAddedToState(
    QueryBatchAdded event,
  ) async* {
    state.queryBatches.add(event.queryBatch);
    yield QueryBatchesChanged(queryBatches: state.queryBatches);
  }

  Stream<QueryBatchesState> _mapQueryBatchCopiedToState(
    QueryBatchCopied event,
  ) async* {
    state.queryBatches.add(event.queryBatch.copy());
    yield QueryBatchesChanged(queryBatches: state.queryBatches);
  }

  Stream<QueryBatchesState> _mapQueryBatchDeletedToState(
    QueryBatchDeleted event,
  ) async* {
    state.queryBatches.removeAt(event.index);
    yield QueryBatchesChanged(queryBatches: state.queryBatches);
  }

  Stream<QueryBatchesState> _mapQueryBatchOrderChangedToState(
    QueryBatchOrderChanged event,
  ) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final QueryBatch item = state.queryBatches.removeAt(event.oldIndex);
    state.queryBatches.insert(newIndex, item);

    yield QueryBatchesChanged(queryBatches: state.queryBatches);
  }
}
