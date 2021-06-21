import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:query_wizard/domain.dart';

part 'query_join.freezed.dart';

@freezed
class QueryJoin with _$QueryJoin {
  const factory QueryJoin({
    required String leftTable,
    required bool isLeftAll,
    required String rightTable,
    required bool isRightAll,
    required QueryCondition condition,
  }) = _QueryJoin;

  factory QueryJoin.empty() => QueryJoin(
        leftTable: '',
        isLeftAll: false,
        rightTable: '',
        isRightAll: false,
        condition: QueryCondition.empty(),
      );

  @override
  String toString() {
    return condition.isCustom
        ? condition.customCondition
        : '$leftTable.${condition.leftField} '
            '${condition.logicalCompareType} '
            '$rightTable.${condition.rightField}';
  }
}
