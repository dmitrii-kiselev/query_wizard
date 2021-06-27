import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

class QueryCondition extends Equatable implements IEntity {
  const QueryCondition({
    required this.id,
    required this.isCustom,
    required this.leftField,
    required this.logicalCompareType,
    required this.rightField,
    required this.customCondition,
  });

  const QueryCondition.empty()
      : id = '',
        isCustom = false,
        leftField = '',
        logicalCompareType = LogicalCompareType.equal,
        rightField = '',
        customCondition = '';

  @override
  final String id;
  final bool isCustom;
  final String leftField;
  final LogicalCompareType logicalCompareType;
  final String rightField;
  final String customCondition;

  @override
  List<Object?> get props => [
        id,
        isCustom,
        leftField,
        logicalCompareType,
        rightField,
        customCondition,
      ];

  @override
  String toString() {
    return isCustom ? 'Custom' : '$leftField $logicalCompareType $rightField';
  }
}

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
