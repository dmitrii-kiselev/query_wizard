import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_condition.freezed.dart';

@freezed
class QueryCondition with _$QueryCondition {
  const factory QueryCondition({
    required bool isCustom,
    required String leftField,
    required String logicalCompareType,
    required String rightField,
    required String customCondition,
  }) = _QueryCondition;

  factory QueryCondition.empty() => const QueryCondition(
        isCustom: false,
        leftField: '',
        logicalCompareType: '',
        rightField: '',
        customCondition: '',
      );

  @override
  String toString() {
    return isCustom ? 'Custom' : '$leftField $logicalCompareType $rightField';
  }
}
