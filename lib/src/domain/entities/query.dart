import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

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

extension CopyQuery on Query {
  Query copy() => Query(
        id: const Uuid().v1(),
        name: name,
        sources: sources,
        tables: tables,
        fields: fields,
        joins: joins,
        groupings: groupings,
        aggregates: aggregates,
        conditions: conditions,
        orders: orders,
        isTop: isTop,
        topCounter: topCounter,
        isDistinct: isDistinct,
      );

  Query copyWith({
    String? name,
    List<QueryElement>? sources,
    List<QueryElement>? tables,
    List<QueryElement>? fields,
    List<QueryJoin>? joins,
    List<QueryGrouping>? groupings,
    List<QueryAggregate>? aggregates,
    List<QueryCondition>? conditions,
    List<QueryOrder>? orders,
    bool? isTop,
    int? topCounter,
    bool? isDistinct,
  }) =>
      Query(
        id: const Uuid().v1(),
        name: name ?? this.name,
        sources: sources ?? this.sources,
        tables: tables ?? this.tables,
        fields: fields ?? this.fields,
        joins: joins ?? this.joins,
        groupings: groupings ?? this.groupings,
        aggregates: aggregates ?? this.aggregates,
        conditions: conditions ?? this.conditions,
        orders: orders ?? this.orders,
        topCounter: topCounter ?? this.topCounter,
        isTop: isTop ?? this.isTop,
        isDistinct: isDistinct ?? this.isDistinct,
      );
}
