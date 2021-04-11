import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class JoinsTabEvent extends Equatable {}

class JoinAdded extends JoinsTabEvent {
  final Join join;

  JoinAdded({required this.join});

  List<Object?> get props => [join];
}

class JoinEdited extends JoinsTabEvent {
  final int index;
  final Join join;
  final String? leftTable;
  final bool? isLeftAll;
  final String? rightTable;
  final bool? isRightAll;
  final Condition? condition;

  JoinEdited(
      {required this.index,
      required this.join,
      this.leftTable,
      this.isLeftAll,
      this.rightTable,
      this.isRightAll,
      this.condition});

  List<Object?> get props => [join];
}

class JoinCopied extends JoinsTabEvent {
  final Join join;

  JoinCopied({required this.join});

  List<Object?> get props => [join];
}

class JoinRemoved extends JoinsTabEvent {
  final int index;

  JoinRemoved({required this.index});

  List<Object?> get props => [index];
}

class JoinOrderChanged extends JoinsTabEvent {
  final int oldIndex;
  final int newIndex;

  JoinOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
