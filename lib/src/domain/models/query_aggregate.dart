import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_aggregate.freezed.dart';

@freezed
class QueryAggregate with _$QueryAggregate {
  const factory QueryAggregate({
    required String field,
    required String function,
  }) = _QueryAggregate;
}
