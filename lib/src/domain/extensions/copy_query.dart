import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

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
