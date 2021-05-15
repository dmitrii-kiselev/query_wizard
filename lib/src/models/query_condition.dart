import 'package:equatable/equatable.dart';

class QueryCondition extends Equatable {
  const QueryCondition(
      {required this.isCustom,
      required this.leftField,
      required this.logicalCompareType,
      required this.rightField,
      required this.customCondition});

  const QueryCondition.empty()
      : isCustom = false,
        leftField = '',
        logicalCompareType = '',
        rightField = '',
        customCondition = '';

  final bool isCustom;
  final String leftField;
  final String logicalCompareType;
  final String rightField;
  final String customCondition;

  @override
  List<Object?> get props =>
      [isCustom, leftField, logicalCompareType, rightField, customCondition];

  @override
  String toString() {
    return customCondition == ''
        ? '$leftField $logicalCompareType $rightField'
        : 'Custom';
  }
}

extension CopyQueryCondition on QueryCondition {
  QueryCondition copy() => QueryCondition(
      isCustom: isCustom,
      leftField: leftField,
      logicalCompareType: logicalCompareType,
      rightField: rightField,
      customCondition: customCondition);

  QueryCondition copyWith(
          {bool? isCustom,
          String? leftField,
          String? logicalCompareType,
          String? rightField,
          String? customCondition}) =>
      QueryCondition(
          isCustom: isCustom ?? this.isCustom,
          leftField: leftField ?? this.leftField,
          logicalCompareType: logicalCompareType ?? this.logicalCompareType,
          rightField: rightField ?? this.rightField,
          customCondition: customCondition ?? this.customCondition);
}
