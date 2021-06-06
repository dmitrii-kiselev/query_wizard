import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryJoinsBloc extends Bloc<QueryJoinsEvent, QueryJoinsState> {
  QueryJoinsBloc({QueryJoinsState? initialState})
      : super(initialState ?? QueryJoinsInitial());

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
      QueryJoinsInitialized event) async* {
    yield QueryJoinsChanged(joins: event.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinAddedToState(
      QueryJoinAdded event) async* {
    state.joins.add(event.join);
    yield QueryJoinsChanged(joins: state.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinUpdatedToState(
      QueryJoinUpdated event) async* {
    final condition = QueryCondition(
        isCustom: event.condition?.isCustom ?? event.join.condition.isCustom,
        leftField: event.condition?.leftField ?? event.join.condition.leftField,
        logicalCompareType: event.condition?.logicalCompareType ??
            event.join.condition.logicalCompareType,
        rightField:
            event.condition?.rightField ?? event.join.condition.rightField,
        customCondition: event.condition?.customCondition ??
            event.join.condition.customCondition);
    final join = QueryJoin(
        leftTable: event.leftTable ?? event.join.leftTable,
        isLeftAll: event.isLeftAll ?? event.join.isLeftAll,
        rightTable: event.rightTable ?? event.join.rightTable,
        isRightAll: event.isRightAll ?? event.join.isRightAll,
        condition: event.condition ?? condition);

    state.joins.removeAt(event.index);
    state.joins.insert(event.index, join);

    yield QueryJoinsChanged(joins: state.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinCopiedToState(
      QueryJoinCopied event) async* {
    state.joins.add(event.join.copy());
    yield QueryJoinsChanged(joins: state.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinDeletedToState(
      QueryJoinDeleted event) async* {
    state.joins.removeAt(event.index);
    yield QueryJoinsChanged(joins: state.joins);
  }

  Stream<QueryJoinsState> _mapQueryJoinOrderChangedToState(
      QueryJoinOrderChanged event) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final QueryJoin item = state.joins.removeAt(event.oldIndex);
    state.joins.insert(newIndex, item);

    yield QueryJoinsChanged(joins: state.joins);
  }
}
