import 'package:query_wizard/domain.dart';

extension QueryAggregateFunctionStringValue on QueryAggregateFunction {
  String get stringValue {
    switch (this) {
      case QueryAggregateFunction.sum:
        return 'SUM';
      case QueryAggregateFunction.countDistinct:
        return 'COUNT';
      case QueryAggregateFunction.count:
        return 'COUNT';
      case QueryAggregateFunction.max:
        return 'MAX';
      case QueryAggregateFunction.min:
        return 'MIN';
      case QueryAggregateFunction.average:
        return 'AVG';
    }
  }
}
