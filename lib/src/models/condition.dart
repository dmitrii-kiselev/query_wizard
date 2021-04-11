import 'package:equatable/equatable.dart';

class Condition extends Equatable {
  final bool isCustom;
  final String leftField;
  final String logicalCompareType;
  final String rightField;
  final String customCondition;

  const Condition(
      {required this.isCustom,
      required this.leftField,
      required this.logicalCompareType,
      required this.rightField,
      required this.customCondition});

  Condition.empty()
      : isCustom = false,
        leftField = '',
        logicalCompareType = '',
        rightField = '',
        customCondition = '';

  @override
  List<Object?> get props =>
      [isCustom, leftField, logicalCompareType, rightField, customCondition];
}

extension CopyCondition on Condition {
  Condition copy() => Condition(
      isCustom: isCustom,
      leftField: leftField,
      logicalCompareType: logicalCompareType,
      rightField: rightField,
      customCondition: customCondition);

  Condition copyWith(
          {bool? isCustom,
          String? leftField,
          String? logicalCompareType,
          String? rightField,
          String? customCondition}) =>
      Condition(
          isCustom: isCustom ?? this.isCustom,
          leftField: leftField ?? this.leftField,
          logicalCompareType: logicalCompareType ?? this.logicalCompareType,
          rightField: rightField ?? this.rightField,
          customCondition: customCondition ?? this.customCondition);
}
