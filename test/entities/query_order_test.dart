import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryOrder initialized', () {
    final sorting = QueryOrder(
      id: const Uuid().v1(),
      field: '',
      type: QuerySortingType.ascending,
    );

    expect(sorting.field, '');
    expect(sorting.type, QuerySortingType.ascending);
    expect(
      sorting.props,
      equals([
        sorting.id,
        sorting.field,
        sorting.type,
      ]),
    );
  });
}
