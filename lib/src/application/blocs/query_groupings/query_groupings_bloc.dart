import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_groupings_bloc.freezed.dart';

part 'query_groupings_event.dart';

part 'query_groupings_state.dart';

@lazySingleton
class QueryGroupingsBloc
    extends Bloc<QueryGroupingsEvent, QueryGroupingsState> {
  QueryGroupingsBloc() : super(QueryGroupingsState.initial());

  @override
  Stream<QueryGroupingsState> mapEventToState(
    QueryGroupingsEvent event,
  ) async* {
    yield state.copyWith(
      isChanging: true,
      groupings: state.groupings,
    );

    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
          isChanging: false,
          groupings: e.groupings,
        );
      },
      groupingAdded: (e) async* {
        state.groupings.add(e.grouping);
        yield state.copyWith(
          isChanging: false,
          groupings: state.groupings,
        );
      },
      groupingDeleted: (e) async* {
        state.groupings.removeAt(e.index);
        yield state.copyWith(
          isChanging: false,
          groupings: state.groupings,
        );
      },
      groupingOrderChanged: (e) async* {
        var newIndex = e.newIndex;
        if (e.oldIndex < newIndex) {
          newIndex -= 1;
        }

        final item = state.groupings.removeAt(e.oldIndex);
        state.groupings.insert(newIndex, item);

        yield state.copyWith(
          isChanging: false,
          groupings: state.groupings,
        );
      },
    );
  }
}
