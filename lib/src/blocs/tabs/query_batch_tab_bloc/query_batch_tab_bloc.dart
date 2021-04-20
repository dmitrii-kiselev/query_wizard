import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryBatchTabBloc extends Bloc<QueryBatchTabEvent, QueryBatchTabState> {
  QueryBatchTabBloc(initialState) : super(initialState);

  @override
  Stream<QueryBatchTabState> mapEventToState(QueryBatchTabEvent event) async* {
    yield QueryBatchesInitial(queryBatches: state.queryBatches);

    if (event is QueryBatchesInitialized) {
      state.queryBatches.clear();
      state.queryBatches.addAll(event.queryBatches);

      yield QueryBatchesChanged(queryBatches: state.queryBatches);
    }

    if (event is QueryBatchAdded) {
      state.queryBatches.add(event.queryBatch);
      yield QueryBatchesChanged(queryBatches: state.queryBatches);
    }

    if (event is QueryBatchCopied) {
      state.queryBatches.add(event.queryBatch.copy());
      yield QueryBatchesChanged(queryBatches: state.queryBatches);
    }

    if (event is QueryBatchRemoved) {
      state.queryBatches.removeAt(event.index);
      yield QueryBatchesChanged(queryBatches: state.queryBatches);
    }

    if (event is QueryBatchOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }
      final QueryBatch item = state.queryBatches.removeAt(event.oldIndex);
      state.queryBatches.insert(newIndex, item);
      yield QueryBatchesChanged(queryBatches: state.queryBatches);
    }
  }
}
