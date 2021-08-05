import 'package:query_wizard/domain.dart';

extension QuerySortingTypeStringValue on QuerySortingType {
  String get stringValue {
    switch (this) {
      case QuerySortingType.ascending:
        return 'ASC';
      case QuerySortingType.descending:
        return 'DESC';
    }
  }
}
