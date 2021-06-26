import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

class QuerySchema extends Equatable {
  const QuerySchema({required this.queryBatches});

  QuerySchema.empty()
      : queryBatches = [
          QueryBatch(
            id: const Uuid().v1(),
            name: 'Query batch 1',
            sources: List<QueryElement>.empty(growable: true),
            queries: [
              Query(
                id: const Uuid().v1(),
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
            queryType: QueryType.selectQuery,
          )
        ];

  final List<QueryBatch> queryBatches;

  @override
  List<Object?> get props => [queryBatches];
}
