import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryConditionsTabBloc
    extends Bloc<QueryConditionsTabEvent, QueryConditionsTabState> {
  QueryConditionsTabBloc({QueryConditionsTabState? initialState})
      : super(initialState ?? QueryConditionsInitial());

  @override
  Stream<QueryConditionsTabState> mapEventToState(
      QueryConditionsTabEvent event) async* {
    yield QueryConditionsInitial(conditions: state.conditions);

    if (event is QueryConditionsInitialized) {
      yield QueryConditionsChanged(conditions: event.conditions);
    }

    if (event is QueryConditionAdded) {
      state.conditions.add(event.condition);
      yield QueryConditionsChanged(conditions: state.conditions);
    }

    if (event is QueryConditionEdited) {
      final condition = QueryCondition(
          isCustom: event.isCustom ?? event.condition.isCustom,
          leftField: event.leftField ?? event.condition.leftField,
          logicalCompareType:
              event.logicalCompareType ?? event.condition.logicalCompareType,
          rightField: event.rightField ?? event.condition.rightField,
          customCondition:
              event.customCondition ?? event.condition.customCondition);

      state.conditions.removeAt(event.index);
      state.conditions.insert(event.index, condition);

      yield QueryConditionsChanged(conditions: state.conditions);
    }

    if (event is QueryConditionCopied) {
      state.conditions.add(event.condition.copy());
      yield QueryConditionsChanged(conditions: state.conditions);
    }

    if (event is QueryConditionRemoved) {
      state.conditions.removeAt(event.index);
      yield QueryConditionsChanged(conditions: state.conditions);
    }

    if (event is QueryConditionOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }

      final QueryCondition item = state.conditions.removeAt(event.oldIndex);
      state.conditions.insert(newIndex, item);

      yield QueryConditionsChanged(conditions: state.conditions);
    }
  }
}
