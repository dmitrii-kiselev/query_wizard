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

  @override
  List<Object?> get props => [name, sources, queries, aliases, queryType];
}

enum QueryType { selectQuery, temporaryTable }
