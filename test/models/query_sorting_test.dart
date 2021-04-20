import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('QuerySorting initialized', () {
    final sorting = QuerySorting(field: '', type: QuerySortingType.ascending);

    expect(sorting.field, '');
    expect(sorting.type, QuerySortingType.ascending);
    expect(sorting.props, equals([sorting.field, sorting.type]));
  });
}
