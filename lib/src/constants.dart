import 'package:query_wizard/models.dart';

class QueryWizardConstants {
  static const double defaultEdgeInsetsAllValue = 8;

  static const List<String> aggregateFunctions = [
    'Sum',
    'Count Distinct',
    'Count',
    'Max',
    'Min',
    'Average'
  ];

  static const List<String> logicalCompareTypes = [
    '=',
    '<>',
    '<',
    '>',
    '<=',
    '>='
  ];

  static const List<QuerySortingType> sortingTypes = [
    QuerySortingType.ascending,
    QuerySortingType.descending,
  ];
}
