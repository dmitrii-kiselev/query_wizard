import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:query_wizard/domain.dart';

part 'query_grouping.freezed.dart';

@freezed
class QueryGrouping with _$QueryGrouping {
  const factory QueryGrouping({
    required String name,
    required QueryGroupingType type,
    QueryGrouping? parent,
    required List<QueryGrouping> elements,
  }) = _QueryGrouping;
}
