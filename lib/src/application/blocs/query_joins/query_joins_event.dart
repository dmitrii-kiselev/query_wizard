part of 'query_joins_bloc.dart';

@freezed
class QueryJoinsEvent with _$QueryJoinsEvent {
  const factory QueryJoinsEvent.initialized({
    required List<QueryJoin> joins,
  }) = _Initialized;

  const factory QueryJoinsEvent.joinAdded({
    required QueryJoin join,
  }) = _QueryJoinAdded;

  const factory QueryJoinsEvent.joinUpdated({
    required int index,
    required QueryJoin join,
    String? leftTable,
    bool? isLeftAll,
    String? rightTable,
    bool? isRightAll,
    QueryCondition? condition,
  }) = _QueryJoinUpdated;

  const factory QueryJoinsEvent.joinCopied({
    required QueryJoin join,
  }) = _QueryJoinCopied;

  const factory QueryJoinsEvent.joinDeleted({
    required int index,
  }) = _QueryJoinDeleted;

  const factory QueryJoinsEvent.joinOrderChanged({
    required int oldIndex,
    required int newIndex,
  }) = _QueryJoinOrderChanged;
}
