import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_joins_bloc.freezed.dart';

part 'query_joins_event.dart';

part 'query_joins_state.dart';

@lazySingleton
class QueryJoinsBloc extends Bloc<QueryJoinsEvent, QueryJoinsState> {
  QueryJoinsBloc() : super(QueryJoinsState.initial());

  @override
  Stream<QueryJoinsState> mapEventToState(QueryJoinsEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(joins: e.joins);
      },
      joinAdded: (e) async* {
        state.joins.add(e.join);
        yield state.copyWith(joins: state.joins);
      },
      joinUpdated: (e) async* {
        final condition = QueryCondition(
            isCustom: e.condition?.isCustom ?? e.join.condition.isCustom,
            leftField: e.condition?.leftField ?? e.join.condition.leftField,
            logicalCompareType: e.condition?.logicalCompareType ??
                e.join.condition.logicalCompareType,
            rightField: e.condition?.rightField ?? e.join.condition.rightField,
            customCondition: e.condition?.customCondition ??
                e.join.condition.customCondition);
        final join = QueryJoin(
            leftTable: e.leftTable ?? e.join.leftTable,
            isLeftAll: e.isLeftAll ?? e.join.isLeftAll,
            rightTable: e.rightTable ?? e.join.rightTable,
            isRightAll: e.isRightAll ?? e.join.isRightAll,
            condition: e.condition ?? condition);

        state.joins.removeAt(e.index);
        state.joins.insert(e.index, join);

        yield state.copyWith(joins: state.joins);
      },
      joinCopied: (e) async* {
        state.joins.add(e.join.copyWith());
        yield state.copyWith(joins: state.joins);
      },
      joinDeleted: (e) async* {
        state.joins.removeAt(e.index);
        yield state.copyWith(joins: state.joins);
      },
      joinOrderChanged: (e) async* {
        var newIndex = e.newIndex;
        if (e.oldIndex < newIndex) {
          newIndex -= 1;
        }

        final item = state.joins.removeAt(e.oldIndex);
        state.joins.insert(newIndex, item);

        yield state.copyWith(joins: state.joins);
      },
    );
  }
}
