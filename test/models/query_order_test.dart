import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryOrder initialized', () {
    const sorting = QueryOrder(
      field: '',
      type: QuerySortingType.ascending,
    );

    expect(sorting.field, '');
    expect(sorting.type, QuerySortingType.ascending);
    expect(
      sorting.props,
      equals([
        sorting.field,
        sorting.type,
      ]),
    );
  });
}
