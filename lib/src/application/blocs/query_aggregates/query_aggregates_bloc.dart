import 'package:meta/meta.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_aggregates_bloc.freezed.dart';

part 'query_aggregates_event.dart';

part 'query_aggregates_state.dart';

@lazySingleton
class QueryAggregatesBloc
    extends Bloc<QueryAggregatesEvent, QueryAggregatesState> {
  QueryAggregatesBloc() : super(QueryAggregatesState.initial());

  @override
  Stream<QueryAggregatesState> mapEventToState(
    QueryAggregatesEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(aggregates: e.aggregates);
      },
      aggregateAdded: (e) async* {
        state.aggregates.add(e.aggregate);
        yield state.copyWith(aggregates: state.aggregates);
      },
      aggregateUpdated: (e) async* {
        state.aggregates.removeAt(e.index);
        state.aggregates.insert(e.index, e.aggregate);

        yield state.copyWith(aggregates: state.aggregates);
      },
      aggregateDeleted: (e) async* {
        state.aggregates.removeAt(e.index);
        yield state.copyWith(aggregates: state.aggregates);
      },
      aggregateOrderChanged: (e) async* {
        var newIndex = e.newIndex;
        if (e.oldIndex < newIndex) {
          newIndex -= 1;
        }

        final item = state.aggregates.removeAt(e.oldIndex);
        state.aggregates.insert(newIndex, item);

        yield state.copyWith(aggregates: state.aggregates);
      },
    );
  }
}
