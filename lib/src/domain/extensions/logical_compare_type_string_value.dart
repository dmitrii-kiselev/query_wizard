import 'package:query_wizard/domain.dart';

extension LogicalCompareTypeStringValue on LogicalCompareType {
  String get stringValue {
    switch (this) {
      case LogicalCompareType.equal:
        return '=';
      case LogicalCompareType.notEqual:
        return '<>';
      case LogicalCompareType.less:
        return '<';
      case LogicalCompareType.more:
        return '>';
      case LogicalCompareType.lessOrEqual:
        return '<=';
      case LogicalCompareType.moreOrEqual:
        return '>=';
    }
  }
}
