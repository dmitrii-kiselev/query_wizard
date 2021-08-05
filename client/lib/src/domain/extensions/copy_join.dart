import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

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
    QueryElement? leftTable,
    bool? isLeftAll,
    QueryElement? rightTable,
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

  String getJoin() {
    if (isLeftAll && isRightAll) {
      return 'FULL OUTER';
    }

    if (!isLeftAll && !isRightAll) {
      return 'INNER';
    }

    if (isLeftAll) {
      return 'LEFT';
    }

    return 'RIGHT';
  }
}
