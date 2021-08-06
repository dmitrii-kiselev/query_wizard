part of 'query_conditions_bloc.dart';

abstract class QueryConditionsState extends Equatable {
  const QueryConditionsState({required this.conditions});

  final List<QueryCondition> conditions;

  @override
  List<Object?> get props => [conditions];
}

class QueryConditionsInitial extends QueryConditionsState {
  QueryConditionsInitial({List<QueryCondition>? conditions})
      : super(conditions: conditions ?? []);
}

class QueryConditionsChanged extends QueryConditionsState {
  const QueryConditionsChanged({required List<QueryCondition> conditions})
      : super(conditions: conditions);
}
