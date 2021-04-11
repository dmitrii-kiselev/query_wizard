import 'package:equatable/equatable.dart';
import 'package:query_wizard/src/models/condition.dart';

class Join extends Equatable {
  final String leftTable;
  final bool isLeftAll;
  final String rightTable;
  final bool isRightAll;
  final Condition condition;

  const Join(
      {required this.leftTable,
      required this.isLeftAll,
      required this.rightTable,
      required this.isRightAll,
      required this.condition});

  Join.empty()
      : leftTable = '',
        isLeftAll = false,
        rightTable = '',
        isRightAll = false,
        condition = Condition.empty();

  @override
  List<Object?> get props =>
      [leftTable, isLeftAll, rightTable, isRightAll, condition];
}

extension CopyJoin on Join {
  Join copy() => Join(
      leftTable: leftTable,
      isLeftAll: isLeftAll,
      rightTable: rightTable,
      isRightAll: isRightAll,
      condition: condition.copy());

  Join copyWith(
          {String? leftTable,
          bool? isLeftAll,
          String? rightTable,
          bool? isRightAll,
          Condition? condition}) =>
      Join(
          leftTable: leftTable ?? this.leftTable,
          isLeftAll: isLeftAll ?? this.isLeftAll,
          rightTable: rightTable ?? this.rightTable,
          isRightAll: isRightAll ?? this.isRightAll,
          condition: condition ?? this.condition);
}
