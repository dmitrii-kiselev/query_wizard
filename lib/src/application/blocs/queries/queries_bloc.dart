import 'package:meta/meta.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'queries_bloc.freezed.dart';

part 'queries_event.dart';

part 'queries_state.dart';

@lazySingleton
class QueriesBloc extends Bloc<QueriesEvent, QueriesState> {
  QueriesBloc() : super(QueriesState.initial());

  @override
  Stream<QueriesState> mapEventToState(QueriesEvent event) async* {
    yield state.copyWith(
      isChanging: true,
      queries: state.queries,
    );

    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(queries: e.queries);
      },
      queryAdded: (e) async* {
        state.queries.add(e.query);
        yield state.copyWith(
          isChanging: false,
          queries: state.queries,
        );
      },
      queryCopied: (e) async* {
        state.queries.add(e.query.copyWith());
        yield state.copyWith(
          isChanging: false,
          queries: state.queries,
        );
      },
      queryDeleted: (e) async* {
        state.queries.removeAt(e.index);
        yield state.copyWith(
          isChanging: false,
          queries: state.queries,
        );
      },
      queryOrderChanged: (e) async* {
        var newIndex = e.newIndex;
        if (e.oldIndex < newIndex) {
          newIndex -= 1;
        }

        final item = state.queries.removeAt(e.oldIndex);
        state.queries.insert(newIndex, item);

        yield state.copyWith(
          isChanging: false,
          queries: state.queries,
        );
      },
    );
  }
}
