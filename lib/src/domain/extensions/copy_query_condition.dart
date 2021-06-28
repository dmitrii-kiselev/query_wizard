import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

extension CopyQueryCondition on QueryCondition {
  QueryCondition copy() => QueryCondition(
        id: const Uuid().v1(),
        isCustom: isCustom,
        leftField: leftField,
        logicalCompareType: logicalCompareType,
        rightField: rightField,
        customCondition: customCondition,
      );

  QueryCondition copyWith({
    String? id,
    bool? isCustom,
    String? leftField,
    LogicalCompareType? logicalCompareType,
    String? rightField,
    String? customCondition,
  }) =>
      QueryCondition(
        id: id ?? const Uuid().v1(),
        isCustom: isCustom ?? this.isCustom,
        leftField: leftField ?? this.leftField,
        logicalCompareType: logicalCompareType ?? this.logicalCompareType,
        rightField: rightField ?? this.rightField,
        customCondition: customCondition ?? this.customCondition,
      );
}
