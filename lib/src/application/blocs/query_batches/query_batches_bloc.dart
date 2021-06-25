import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_batches_bloc.freezed.dart';

part 'query_batches_event.dart';

part 'query_batches_state.dart';

@lazySingleton
class QueryBatchesBloc extends Bloc<QueryBatchesEvent, QueryBatchesState> {
  QueryBatchesBloc() : super(QueryBatchesState.initial());

  @override
  Stream<QueryBatchesState> mapEventToState(QueryBatchesEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(batches: e.batches);
      },
      batchAdded: (e) async* {
        state.batches.add(e.batch);
        yield state.copyWith(batches: state.batches);
      },
      batchCopied: (e) async* {
        state.batches.add(e.batch.copyWith());
        yield state.copyWith(batches: state.batches);
      },
      batchDeleted: (e) async* {
        state.batches.removeAt(e.index);
        yield state.copyWith(batches: state.batches);
      },
      batchOrderChanged: (e) async* {
        var newIndex = e.newIndex;
        if (e.oldIndex < newIndex) {
          newIndex -= 1;
        }

        final item = state.batches.removeAt(e.oldIndex);
        state.batches.insert(newIndex, item);

        yield state.copyWith(batches: state.batches);
      },
    );
  }
}
