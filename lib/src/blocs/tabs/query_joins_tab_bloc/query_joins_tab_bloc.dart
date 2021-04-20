import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryJoinsTabBloc extends Bloc<QueryJoinsTabEvent, QueryJoinsTabState> {
  QueryJoinsTabBloc(initialState) : super(initialState);

  @override
  Stream<QueryJoinsTabState> mapEventToState(QueryJoinsTabEvent event) async* {
    yield QueryJoinsInitial(joins: state.joins);

    if (event is QueryJoinsInitialized) {
      state.joins.clear();
      state.joins.addAll(event.joins);

      yield QueryJoinsChanged(joins: state.joins);
    }

    if (event is QueryJoinAdded) {
      state.joins.add(event.join);
      yield QueryJoinsChanged(joins: state.joins);
    }

    if (event is QueryJoinEdited) {
      final condition = QueryCondition(
          isCustom: event.condition?.isCustom ?? event.join.condition.isCustom,
          leftField:
              event.condition?.leftField ?? event.join.condition.leftField,
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

    if (event is QueryJoinCopied) {
      state.joins.add(event.join.copy());
      yield QueryJoinsChanged(joins: state.joins);
    }

    if (event is QueryJoinRemoved) {
      state.joins.removeAt(event.index);
      yield QueryJoinsChanged(joins: state.joins);
    }

    if (event is QueryJoinOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }
      final QueryJoin item = state.joins.removeAt(event.oldIndex);
      state.joins.insert(newIndex, item);
      yield QueryJoinsChanged(joins: state.joins);
    }
  }
}
