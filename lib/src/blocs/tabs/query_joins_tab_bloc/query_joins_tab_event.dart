import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryJoinsTabEvent extends Equatable {}

class QueryJoinsInitialized extends QueryJoinsTabEvent {
  final List<QueryJoin> joins;

  QueryJoinsInitialized({required this.joins});

  List<Object?> get props => [joins];
}

class QueryJoinAdded extends QueryJoinsTabEvent {
  final QueryJoin join;

  QueryJoinAdded({required this.join});

  List<Object?> get props => [join];
}

class QueryJoinEdited extends QueryJoinsTabEvent {
  final int index;
  final QueryJoin join;
  final String? leftTable;
  final bool? isLeftAll;
  final String? rightTable;
  final bool? isRightAll;
  final QueryCondition? condition;

  QueryJoinEdited(
      {required this.index,
      required this.join,
      this.leftTable,
      this.isLeftAll,
      this.rightTable,
      this.isRightAll,
      this.condition});

  List<Object?> get props => [join];
}

class QueryJoinCopied extends QueryJoinsTabEvent {
  final QueryJoin join;

  QueryJoinCopied({required this.join});

  List<Object?> get props => [join];
}

class QueryJoinRemoved extends QueryJoinsTabEvent {
  final int index;

  QueryJoinRemoved({required this.index});

  List<Object?> get props => [index];
}

class QueryJoinOrderChanged extends QueryJoinsTabEvent {
  final int oldIndex;
  final int newIndex;

  QueryJoinOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
