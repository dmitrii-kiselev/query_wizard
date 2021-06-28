import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryBatch extends Equatable implements IEntity {
  const QueryBatch({
    required this.id,
    required this.name,
    required this.sources,
    required this.queries,
    required this.aliases,
    required this.queryType,
  });

  QueryBatch.empty()
      : id = '',
        name = '',
        sources = [],
        queries = [],
        aliases = Map.identity(),
        queryType = QueryType.selectQuery;

  @override
  final String id;
  final String name;
  final List<QueryElement> sources;
  final List<Query> queries;
  final Map<String, Map<String, String>> aliases;
  final QueryType queryType;

  @override
  List<Object?> get props => [
        id,
        name,
        sources,
        queries,
        aliases,
        queryType,
      ];
}
