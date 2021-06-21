import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:query_wizard/domain.dart';

part 'query.freezed.dart';

@freezed
class Query with _$Query {
  const factory Query({
    required String name,
    required List<QueryElement> sources,
    required List<QueryElement> tables,
    required List<QueryElement> fields,
    required List<QueryJoin> joins,
    required List<QueryGrouping> groupings,
    required List<QueryAggregate> aggregates,
    required List<QueryCondition> conditions,
    required List<QueryOrder> orders,
    required bool isTop,
    required int topCounter,
    required bool isDistinct,
  }) = _Query;

  factory Query.empty() => Query(
        name: 'Query',
        sources: List<QueryElement>.empty(growable: true),
        tables: List<QueryElement>.empty(growable: true),
        fields: List<QueryElement>.empty(growable: true),
        joins: List<QueryJoin>.empty(growable: true),
        groupings: List<QueryGrouping>.empty(growable: true),
        aggregates: List<QueryAggregate>.empty(growable: true),
        conditions: List<QueryCondition>.empty(growable: true),
        orders: List<QueryOrder>.empty(growable: true),
        isTop: false,
        topCounter: 0,
        isDistinct: false,
      );
}
