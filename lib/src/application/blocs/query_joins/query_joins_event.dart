import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

abstract class QueryJoinsEvent extends Equatable {
  const QueryJoinsEvent();
}

class QueryJoinsInitialized extends QueryJoinsEvent {
  const QueryJoinsInitialized({required this.joins});

  final List<QueryJoin> joins;

  @override
  List<Object?> get props => [joins];
}

class QueryJoinAdded extends QueryJoinsEvent {
  const QueryJoinAdded({required this.join});

  final QueryJoin join;

  @override
  List<Object?> get props => [join];
}

class QueryJoinUpdated extends QueryJoinsEvent {
  const QueryJoinUpdated(
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

  @override
  List<Object?> get props => [join];
}

class QueryJoinCopied extends QueryJoinsEvent {
  const QueryJoinCopied({required this.join});

  final QueryJoin join;

  @override
  List<Object?> get props => [join];
}

class QueryJoinDeleted extends QueryJoinsEvent {
  const QueryJoinDeleted({required this.index});

  final int index;

  @override
  List<Object?> get props => [index];
}

class QueryJoinOrderChanged extends QueryJoinsEvent {
  const QueryJoinOrderChanged({required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
