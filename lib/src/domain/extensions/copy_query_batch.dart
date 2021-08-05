import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

extension CopyQueryBatch on QueryBatch {
  QueryBatch copy() => QueryBatch(
        id: const Uuid().v1(),
        name: name,
        sources: sources,
        queries: queries,
        aliases: aliases,
        queryType: queryType,
        tempTableName: '',
      );

  QueryBatch copyWith({
    String? name,
    List<QueryElement>? sources,
    List<Query>? queries,
    Map<String, Map<String, String>>? aliases,
    QueryType? queryType,
  }) =>
      QueryBatch(
        id: const Uuid().v1(),
        name: name ?? this.name,
        sources: sources ?? this.sources,
        queries: queries ?? this.queries,
        aliases: aliases ?? this.aliases,
        queryType: queryType ?? this.queryType,
        tempTableName: '',
      );
}
