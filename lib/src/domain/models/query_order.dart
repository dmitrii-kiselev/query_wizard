import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:query_wizard/domain.dart';

part 'query_order.freezed.dart';

@freezed
class QueryOrder with _$QueryOrder {
  const factory QueryOrder({
    required String field,
    required QuerySortingType type,
  }) = _QueryOrder;
}
