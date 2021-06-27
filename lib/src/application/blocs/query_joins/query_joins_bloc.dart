import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_joins_event.dart';

part 'query_joins_state.dart';

@lazySingleton
class QueryJoinsBloc extends Bloc<QueryJoinsEvent, QueryJoinsState> {
  QueryJoinsBloc() : super(QueryJoinsInitial());

  @override
  Stream<QueryJoinsState> mapEventToState(QueryJoinsEvent event) async* {
    yield QueryJoinsInitial(joins: state.joins);

    if (event is QueryJoinsInitialized) {
      yield* _mapQueryJoinsInitializedToState(event);
    } else if (event is QueryJoinAdded) {
      yield* _mapQueryJoinAddedToState(event);
    } else if (event is QueryJoinUpdated) {
      yield* _mapQueryJoinUpdatedToState(event);
    } else if (event is QueryJoinCopied) {
      yield* _mapQueryJoinCopiedToState(event);
    } else if (event is QueryJoinDeleted) {
      yield* _mapQueryJoinDeletedToState(event);
    } else if (event is QueryJoinOrderChanged) {
      yield* _mapQueryJoinOrderChangedToState(event);
    }
  }

  Stream<QueryJoinsState> _mapQueryJoinsInitializedToState(
    QueryJoinsInitialized event,
  ) async* {
    yield QueryJoinsChanged(joins: event.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinAddedToState(
    QueryJoinAdded event,
  ) async* {
    state.joins.add(event.join);
    yield QueryJoinsChanged(joins: state.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinUpdatedToState(
    QueryJoinUpdated event,
  ) async* {
    state.joins.update(event.join);
    yield QueryJoinsChanged(joins: state.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinCopiedToState(
    QueryJoinCopied event,
  ) async* {
    final join = state.joins.findById(event.id);
    state.joins.add(join.copy());
    yield QueryJoinsChanged(joins: state.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinDeletedToState(
    QueryJoinDeleted event,
  ) async* {
    state.joins.removeWhere((j) => j.id == event.id);
    yield QueryJoinsChanged(joins: state.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinOrderChangedToState(
    QueryJoinOrderChanged event,
  ) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final QueryJoin item = state.joins.removeAt(event.oldIndex);
    state.joins.insert(newIndex, item);

    yield QueryJoinsChanged(joins: state.joins);
  }
}
