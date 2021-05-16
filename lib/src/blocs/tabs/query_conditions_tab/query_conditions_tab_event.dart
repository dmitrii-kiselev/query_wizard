import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryConditionsTabEvent extends Equatable {
  const QueryConditionsTabEvent();
}

class QueryConditionsInitialized extends QueryConditionsTabEvent {
  const QueryConditionsInitialized({required this.conditions});

  final List<QueryCondition> conditions;

  List<Object?> get props => [conditions];
}

class QueryConditionAdded extends QueryConditionsTabEvent {
  const QueryConditionAdded({required this.condition});

  final QueryCondition condition;

  List<Object?> get props => [condition];
}

class QueryConditionEdited extends QueryConditionsTabEvent {
  const QueryConditionEdited(
      {required this.index,
      required this.condition,
      this.isCustom,
      this.leftField,
      this.logicalCompareType,
      this.rightField,
      this.customCondition});

  final int index;
  final QueryCondition condition;
  final bool? isCustom;
  final String? leftField;
  final String? logicalCompareType;
  final String? rightField;
  final String? customCondition;

  List<Object?> get props => [condition];
}

class QueryConditionCopied extends QueryConditionsTabEvent {
  const QueryConditionCopied({required this.condition});

  final QueryCondition condition;

  List<Object?> get props => [condition];
}

class QueryConditionRemoved extends QueryConditionsTabEvent {
  const QueryConditionRemoved({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QueryConditionOrderChanged extends QueryConditionsTabEvent {
  const QueryConditionOrderChanged(
      {required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
