import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

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
            '${condition.logicalCompareType} '
            '$rightTable.${condition.rightField}';
  }
}

extension CopyJoin on QueryJoin {
  QueryJoin copy() => QueryJoin(
        id: const Uuid().v1(),
        leftTable: leftTable,
        isLeftAll: isLeftAll,
        rightTable: rightTable,
        isRightAll: isRightAll,
        condition: condition.copy(),
      );

  QueryJoin copyWith({
    String? id,
    String? leftTable,
    bool? isLeftAll,
    String? rightTable,
    bool? isRightAll,
    QueryCondition? condition,
  }) =>
      QueryJoin(
        id: id ?? const Uuid().v1(),
        leftTable: leftTable ?? this.leftTable,
        isLeftAll: isLeftAll ?? this.isLeftAll,
        rightTable: rightTable ?? this.rightTable,
        isRightAll: isRightAll ?? this.isRightAll,
        condition: condition ?? this.condition,
      );
}
