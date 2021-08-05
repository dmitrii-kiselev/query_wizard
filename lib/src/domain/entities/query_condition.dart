import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryCondition extends Equatable implements IEntity {
  const QueryCondition({
    required this.id,
    required this.isCustom,
    this.leftField,
    required this.logicalCompareType,
    this.rightField,
    required this.customCondition,
  });

  const QueryCondition.empty()
      : id = '',
        isCustom = false,
        leftField = null,
        logicalCompareType = LogicalCompareType.equal,
        rightField = null,
        customCondition = '';

  @override
  final String id;
  final bool isCustom;
  final QueryElement? leftField;
  final LogicalCompareType logicalCompareType;
  final QueryElement? rightField;
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
}
