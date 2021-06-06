import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryConditionsEvent extends Equatable {
  const QueryConditionsEvent();
}

class QueryConditionsInitialized extends QueryConditionsEvent {
  const QueryConditionsInitialized({required this.conditions});

  final List<QueryCondition> conditions;

  List<Object?> get props => [conditions];
}

class QueryConditionAdded extends QueryConditionsEvent {
  const QueryConditionAdded({required this.condition});

  final QueryCondition condition;

  List<Object?> get props => [condition];
}

class QueryConditionUpdated extends QueryConditionsEvent {
  const QueryConditionUpdated(
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

class QueryConditionCopied extends QueryConditionsEvent {
  const QueryConditionCopied({required this.condition});

  final QueryCondition condition;

  List<Object?> get props => [condition];
}

class QueryConditionDeleted extends QueryConditionsEvent {
  const QueryConditionDeleted({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QueryConditionOrderChanged extends QueryConditionsEvent {
  const QueryConditionOrderChanged(
      {required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
