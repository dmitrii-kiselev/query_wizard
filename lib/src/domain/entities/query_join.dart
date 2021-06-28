import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryJoin extends Equatable implements IEntity {
  const QueryJoin({
    required this.id,
    required this.leftTable,
    required this.isLeftAll,
    required this.rightTable,
    required this.isRightAll,
    required this.condition,
  });

  const QueryJoin.empty()
      : id = '',
        leftTable = '',
        isLeftAll = false,
        rightTable = '',
        isRightAll = false,
        condition = const QueryCondition.empty();

  @override
  final String id;
  final String leftTable;
  final bool isLeftAll;
  final String rightTable;
  final bool isRightAll;
  final QueryCondition condition;

  @override
  List<Object?> get props => [
        id,
        leftTable,
        isLeftAll,
        rightTable,
        isRightAll,
        condition,
      ];

  @override
  String toString() {
    return condition.isCustom
        ? condition.customCondition
        : '$leftTable.${condition.leftField} '
            '${condition.logicalCompareType.stringValue} '
            '$rightTable.${condition.rightField}';
  }
}
