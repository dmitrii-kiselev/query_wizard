import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryJoin extends Equatable {
  const QueryJoin(
      {required this.leftTable,
      required this.isLeftAll,
      required this.rightTable,
      required this.isRightAll,
      required this.condition});

  const QueryJoin.empty()
      : leftTable = '',
        isLeftAll = false,
        rightTable = '',
        isRightAll = false,
        condition = const QueryCondition.empty();

  final String leftTable;
  final bool isLeftAll;
  final String rightTable;
  final bool isRightAll;
  final QueryCondition condition;

  @override
  List<Object?> get props =>
      [leftTable, isLeftAll, rightTable, isRightAll, condition];

  @override
  String toString() {
    return condition.isCustom
        ? condition.customCondition
        : '$leftTable.${condition.leftField} '
            '${condition.logicalCompareType} '
            '$rightTable.${condition.rightField}';
  }
}

extension CopyJoin on QueryJoin {
  QueryJoin copy() => QueryJoin(
      leftTable: leftTable,
      isLeftAll: isLeftAll,
      rightTable: rightTable,
      isRightAll: isRightAll,
      condition: condition.copy());

  QueryJoin copyWith(
          {String? leftTable,
          bool? isLeftAll,
          String? rightTable,
          bool? isRightAll,
          QueryCondition? condition}) =>
      QueryJoin(
          leftTable: leftTable ?? this.leftTable,
          isLeftAll: isLeftAll ?? this.isLeftAll,
          rightTable: rightTable ?? this.rightTable,
          isRightAll: isRightAll ?? this.isRightAll,
          condition: condition ?? this.condition);
}
