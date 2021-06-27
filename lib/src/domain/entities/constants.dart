import 'package:query_wizard/domain.dart';

class QueryWizardConstants {
  static const double defaultEdgeInsetsAllValue = 8;

  static const List<QueryAggregateFunction> aggregateFunctions = [
    QueryAggregateFunction.sum,
    QueryAggregateFunction.countDistinct,
    QueryAggregateFunction.count,
    QueryAggregateFunction.max,
    QueryAggregateFunction.min,
    QueryAggregateFunction.average,
  ];

  static const List<LogicalCompareType> logicalCompareTypes = [
    LogicalCompareType.equal,
    LogicalCompareType.notEqual,
    LogicalCompareType.less,
    LogicalCompareType.more,
    LogicalCompareType.lessOrEqual,
    LogicalCompareType.moreOrEqual,
  ];

  static const List<QuerySortingType> sortingTypes = [
    QuerySortingType.ascending,
    QuerySortingType.descending,
  ];
}
