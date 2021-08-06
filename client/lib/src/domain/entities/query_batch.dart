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
    required this.tempTableName,
  });

  QueryBatch.empty()
      : id = '',
        name = '',
        sources = [],
        queries = [],
        aliases = Map.identity(),
        queryType = QueryType.selectQuery,
        tempTableName = '';

  @override
  final String id;
  final String name;
  final List<QueryElement> sources;
  final List<Query> queries;
  final Map<String, Map<String, String>> aliases;
  final QueryType queryType;
  final String tempTableName;

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
