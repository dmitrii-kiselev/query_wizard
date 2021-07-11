part of 'query_conditions_bloc.dart';

abstract class QueryConditionsEvent extends Equatable {
  const QueryConditionsEvent();
}

class QueryConditionsInitialized extends QueryConditionsEvent {
  const QueryConditionsInitialized({required this.conditions});

  final List<QueryCondition> conditions;

  @override
  List<Object?> get props => [conditions];
}

class QueryConditionAdded extends QueryConditionsEvent {
  const QueryConditionAdded({required this.condition});

  final QueryCondition condition;

  @override
  List<Object?> get props => [condition];
}

class QueryConditionUpdated extends QueryConditionsEvent {
  const QueryConditionUpdated({
    required this.condition,
  });

  final QueryCondition condition;

  @override
  List<Object?> get props => [condition];
}

class QueryConditionCopied extends QueryConditionsEvent {
  const QueryConditionCopied({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryConditionDeleted extends QueryConditionsEvent {
  const QueryConditionDeleted({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryConditionOrderChanged extends QueryConditionsEvent {
  const QueryConditionOrderChanged({
    required this.oldIndex,
    required this.newIndex,
  });

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}

class QueryConditionsRemoveByTableId extends QueryConditionsEvent {
  const QueryConditionsRemoveByTableId({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}
