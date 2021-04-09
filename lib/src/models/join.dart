import 'package:equatable/equatable.dart';
import 'package:query_wizard/src/models/condition.dart';

class Join extends Equatable {
  final String leftTableAlias;
  final bool isLeftAll;
  final String rightTableAlias;
  final bool isRightAll;
  final Condition condition;

  const Join(
      {required this.leftTableAlias,
      required this.isLeftAll,
      required this.rightTableAlias,
      required this.isRightAll,
      required this.condition});

  Join.empty()
      : leftTableAlias = '',
        isLeftAll = false,
        rightTableAlias = '',
        isRightAll = false,
        condition = Condition.empty();

  @override
  List<Object?> get props =>
      [leftTableAlias, isLeftAll, rightTableAlias, isRightAll, condition];
}

extension CopyJoin on Join {
  Join copy() => Join(
      leftTableAlias: leftTableAlias,
      isLeftAll: isLeftAll,
      rightTableAlias: rightTableAlias,
      isRightAll: isRightAll,
      condition: condition.copy());
}
