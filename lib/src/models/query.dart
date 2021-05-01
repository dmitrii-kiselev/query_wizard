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

extension CopyQuery on Query {
  Query copy() => Query(
      name: name,
      sources: sources,
      tables: tables,
      fields: fields,
      joins: joins,
      groupings: groupings,
      aggregates: aggregates,
      conditions: conditions,
      sortings: sortings,
      isTop: isTop,
      topCounter: topCounter,
      isDistinct: isDistinct);

  Query copyWith(
          {String? name,
          List<DbElement>? sources,
          List<DbElement>? tables,
          List<DbElement>? fields,
          List<QueryJoin>? joins,
          List<QueryGrouping>? groupings,
          List<QueryAggregate>? aggregates,
          List<QueryCondition>? conditions,
          List<QuerySorting>? sortings,
          bool? isTop,
          int? topCounter,
          bool? isDistinct}) =>
      Query(
          name: name ?? this.name,
          sources: sources ?? this.sources,
          tables: tables ?? this.tables,
          fields: fields ?? this.fields,
          joins: joins ?? this.joins,
          groupings: groupings ?? this.groupings,
          aggregates: aggregates ?? this.aggregates,
          conditions: conditions ?? this.conditions,
          sortings: sortings ?? this.sortings,
          topCounter: topCounter ?? this.topCounter,
          isTop: isTop ?? this.isTop,
          isDistinct: isDistinct ?? this.isDistinct);
}
