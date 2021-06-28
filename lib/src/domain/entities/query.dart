import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class Query extends Equatable implements IEntity {
  const Query({
    required this.id,
    required this.name,
    required this.sources,
    required this.tables,
    required this.fields,
    required this.joins,
    required this.groupings,
    required this.aggregates,
    required this.conditions,
    required this.orders,
    required this.isTop,
    required this.topCounter,
    required this.isDistinct,
  });

  Query.empty()
      : id = '',
        name = 'Query',
        sources = [],
        tables = [],
        fields = [],
        joins = [],
        groupings = [],
        aggregates = [],
        conditions = [],
        orders = [],
        isTop = false,
        topCounter = 0,
        isDistinct = false;

  @override
  final String id;
  final String name;
  final List<QueryElement> sources;
  final List<QueryElement> tables;
  final List<QueryElement> fields;
  final List<QueryJoin> joins;
  final List<QueryGrouping> groupings;
  final List<QueryAggregate> aggregates;
  final List<QueryCondition> conditions;
  final List<QueryOrder> orders;
  final bool isTop;
  final int topCounter;
  final bool isDistinct;

  @override
  List<Object?> get props => [
        id,
        name,
        sources,
        tables,
        fields,
        joins,
        groupings,
        aggregates,
        conditions,
        orders,
        isTop,
        topCounter,
        isDistinct,
      ];
}
