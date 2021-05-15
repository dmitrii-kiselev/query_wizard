import 'package:equatable/equatable.dart';
import 'package:query_wizard/models.dart';

class QuerySchema extends Equatable {
  const QuerySchema({required this.queryBatches});

  QuerySchema.empty()
      : queryBatches = [
          QueryBatch(
              name: 'Query batch 1',
              sources: [],
              queries: [
                Query(
                    name: 'Query 1',
                    sources: [],
                    tables: [],
                    fields: [],
                    joins: [],
                    groupings: [],
                    aggregates: [],
                    conditions: [],
                    sortings: [],
                    isTop: false,
                    topCounter: 0,
                    isDistinct: false)
              ],
              aliases: Map.identity(),
              queryType: QueryType.selectQuery)
        ];

  final List<QueryBatch> queryBatches;

  @override
  List<Object?> get props => [queryBatches];
}
