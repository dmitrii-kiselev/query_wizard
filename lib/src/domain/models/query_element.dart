import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:query_wizard/domain.dart';

part 'query_element.freezed.dart';

@freezed
class QueryElement with _$QueryElement {
  const factory QueryElement({
    required String name,
    String? alias,
    required QueryElementType type,
    QueryElement? parent,
    required List<QueryElement> elements,
  }) = _QueryElement;
}
