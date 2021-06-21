import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:query_wizard/domain.dart';

part 'query_batch.freezed.dart';

@freezed
class QueryBatch with _$QueryBatch {
  const factory QueryBatch({
    required String name,
    required List<QueryElement> sources,
    required List<Query> queries,
    required Map<String, Map<String, String>> aliases,
    required QueryType queryType,
  }) = _QueryBatch;

  factory QueryBatch.empty() => QueryBatch(
        name: '',
        sources: List<QueryElement>.empty(growable: true),
        queries: List<Query>.empty(growable: true),
        aliases: Map.identity(),
        queryType: QueryType.selectQuery,
      );
}
