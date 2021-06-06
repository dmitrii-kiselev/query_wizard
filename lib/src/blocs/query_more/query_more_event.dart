import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryMoreEvent extends Equatable {
  final bool isTop;
  final int topCounter;
  final bool isDistinct;
  final QueryType queryType;
  final String tempTableName;

  const QueryMoreEvent(
      {required this.isTop,
      required this.topCounter,
      required this.isDistinct,
      required this.queryType,
      required this.tempTableName});

  @override
  List<Object?> get props =>
      [isTop, topCounter, isDistinct, queryType, tempTableName];
}

class QueryMoreInitialized extends QueryMoreEvent {
  QueryMoreInitialized(
      {isTop, topCounter, isDistinct, queryType, tempTableName})
      : super(
            isTop: isTop,
            topCounter: topCounter,
            isDistinct: isDistinct,
            queryType: queryType,
            tempTableName: tempTableName);
}

class QueryMoreChanged extends QueryMoreEvent {
  QueryMoreChanged({isTop, topCounter, isDistinct, queryType, tempTableName})
      : super(
            isTop: isTop,
            topCounter: topCounter,
            isDistinct: isDistinct,
            queryType: queryType,
            tempTableName: tempTableName);
}
