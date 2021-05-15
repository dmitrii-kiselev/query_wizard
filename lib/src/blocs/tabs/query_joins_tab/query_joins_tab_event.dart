import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryJoinsTabEvent extends Equatable {
  const QueryJoinsTabEvent();
}

class QueryJoinsInitialized extends QueryJoinsTabEvent {
  const QueryJoinsInitialized({required this.joins});

  final List<QueryJoin> joins;

  List<Object?> get props => [joins];
}

class QueryJoinAdded extends QueryJoinsTabEvent {
  const QueryJoinAdded({required this.join});

  final QueryJoin join;

  List<Object?> get props => [join];
}

class QueryJoinEdited extends QueryJoinsTabEvent {
  const QueryJoinEdited(
      {required this.index,
      required this.join,
      this.leftTable,
      this.isLeftAll,
      this.rightTable,
      this.isRightAll,
      this.condition});

  final int index;
  final QueryJoin join;
  final String? leftTable;
  final bool? isLeftAll;
  final String? rightTable;
  final bool? isRightAll;
  final QueryCondition? condition;

  List<Object?> get props => [join];
}

class QueryJoinCopied extends QueryJoinsTabEvent {
  const QueryJoinCopied({required this.join});

  final QueryJoin join;

  List<Object?> get props => [join];
}

class QueryJoinRemoved extends QueryJoinsTabEvent {
  const QueryJoinRemoved({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QueryJoinOrderChanged extends QueryJoinsTabEvent {
  const QueryJoinOrderChanged({required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
