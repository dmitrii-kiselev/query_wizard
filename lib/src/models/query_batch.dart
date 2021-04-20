import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

class QueryBatch extends Equatable {
  final String name;
  final List<DbElement> sources;
  final List<Query> queries;
  final Map<String, Map<String, String>> aliases;
  final QueryType queryType;

  const QueryBatch(
      {required this.name,
      required this.sources,
      required this.queries,
      required this.aliases,
      required this.queryType});

  QueryBatch.empty()
      : name = '',
        sources = [],
        queries = [],
        aliases = Map.identity(),
        queryType = QueryType.selectQuery;

  @override
  List<Object?> get props => [name, sources, queries, aliases, queryType];
}

enum QueryType { selectQuery, temporaryTable }

extension CopyQueryBatch on QueryBatch {
  QueryBatch copy() => QueryBatch(
      name: name,
      sources: sources,
      queries: queries,
      aliases: aliases,
      queryType: queryType);

  QueryBatch copyWith(
          {String? name,
          List<DbElement>? sources,
          List<Query>? queries,
          Map<String, Map<String, String>>? aliases,
          QueryType? queryType}) =>
      QueryBatch(
          name: name ?? this.name,
          sources: sources ?? this.sources,
          queries: queries ?? this.queries,
          aliases: aliases ?? this.aliases,
          queryType: queryType ?? this.queryType);
}
