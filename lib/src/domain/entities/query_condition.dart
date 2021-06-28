import 'package:equatable/equatable.dart';

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
    return isCustom
        ? 'Custom'
        : '$leftField ${logicalCompareType.stringValue} $rightField';
  }
}
