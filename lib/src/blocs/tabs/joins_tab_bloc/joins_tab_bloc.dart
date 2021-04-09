import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class JoinsTabBloc extends Bloc<JoinsTabEvent, JoinsTabState> {
  JoinsTabBloc(initialState) : super(initialState);

  @override
  Stream<JoinsTabState> mapEventToState(JoinsTabEvent event) async* {
    yield JoinsInitial(state.joins);

    if (event is JoinAdded) {
      state.joins.add(event.join);
      yield JoinsChanged(joins: state.joins);
    }

    if (event is JoinEdited) {
      final condition = Condition(
          isCustom: event.condition?.isCustom ?? event.join.condition.isCustom,
          leftField:
              event.condition?.leftField ?? event.join.condition.leftField,
          logicalCompareType: event.condition?.logicalCompareType ??
              event.join.condition.logicalCompareType,
          rightField:
              event.condition?.rightField ?? event.join.condition.rightField,
          customCondition: event.condition?.customCondition ??
              event.join.condition.customCondition);
      final join = Join(
          leftTableAlias: event.leftTableAlias ?? event.join.leftTableAlias,
          isLeftAll: event.isLeftAll ?? event.join.isLeftAll,
          rightTableAlias: event.rightTableAlias ?? event.join.rightTableAlias,
          isRightAll: event.isRightAll ?? event.join.isRightAll,
          condition: event.condition ?? condition);

      state.joins.removeAt(event.index);
      state.joins.insert(event.index, join);

      yield JoinsChanged(joins: state.joins);
    }

    if (event is JoinCopied) {
      state.joins.add(event.join.copy());
      yield JoinsChanged(joins: state.joins);
    }

    if (event is JoinRemoved) {
      state.joins.removeAt(event.index);
      yield JoinsChanged(joins: state.joins);
    }

    if (event is JoinOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }
      final Join item = state.joins.removeAt(event.oldIndex);
      state.joins.insert(newIndex, item);
      yield JoinsChanged(joins: state.joins);
    }
  }
}
