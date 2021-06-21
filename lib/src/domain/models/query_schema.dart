import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:query_wizard/domain.dart';

part 'query_schema.freezed.dart';

@freezed
class QuerySchema with _$QuerySchema {
  const factory QuerySchema({
    required List<QueryBatch> queryBatches,
  }) = _QuerySchema;

  factory QuerySchema.empty() => QuerySchema(
        queryBatches: [
          QueryBatch(
              name: 'Query batch 1',
              sources: List<QueryElement>.empty(growable: true),
              queries: [
                Query(
                  name: 'Query 1',
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
                )
              ],
              aliases: Map.identity(),
              queryType: QueryType.selectQuery)
        ],
      );
}
