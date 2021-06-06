import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('QueryOrder initialized', () {
    final sorting = QueryOrder(field: '', type: QuerySortingType.ascending);

    expect(sorting.field, '');
    expect(sorting.type, QuerySortingType.ascending);
    expect(sorting.props, equals([sorting.field, sorting.type]));
  });
}
