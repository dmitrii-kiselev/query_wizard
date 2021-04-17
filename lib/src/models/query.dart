import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

class Query extends Equatable {
  final String name;
  final List<DbElement> sources;
  final List<DbElement> tables;
  final List<DbElement> fields;
  final List<QueryJoin> joins;
  final List<QueryGrouping> groupings;
  final List<QueryAggregate> aggregates;
  final List<QueryCondition> conditions;
  final List<QuerySorting> sortings;
  final bool isTop;
  final int topCounter;
  final bool isDistinct;

  const Query(
      {required this.name,
      required this.sources,
      required this.tables,
      required this.fields,
      required this.joins,
      required this.groupings,
      required this.aggregates,
      required this.conditions,
      required this.sortings,
      required this.isTop,
      required this.topCounter,
      required this.isDistinct});

  @override
  List<Object?> get props => [
        name,
        sources,
        tables,
        fields,
        joins,
        groupings,
        aggregates,
        conditions,
        sortings,
        isTop,
        topCounter,
        isDistinct
      ];
}
