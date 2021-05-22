import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryMoreTabEvent extends Equatable {
  final bool isTop;
  final int topCounter;
  final bool isDistinct;
  final QueryType queryType;
  final String tempTableName;

  const QueryMoreTabEvent(
      {required this.isTop,
      required this.topCounter,
      required this.isDistinct,
      required this.queryType,
      required this.tempTableName});

  @override
  List<Object?> get props =>
      [isTop, topCounter, isDistinct, queryType, tempTableName];
}

class QueryMoreTabInitialized extends QueryMoreTabEvent {
  QueryMoreTabInitialized(
      {isTop, topCounter, isDistinct, queryType, tempTableName})
      : super(
            isTop: isTop,
            topCounter: topCounter,
            isDistinct: isDistinct,
            queryType: queryType,
            tempTableName: tempTableName);
}

class QueryMoreTabChanged extends QueryMoreTabEvent {
  QueryMoreTabChanged({isTop, topCounter, isDistinct, queryType, tempTableName})
      : super(
            isTop: isTop,
            topCounter: topCounter,
            isDistinct: isDistinct,
            queryType: queryType,
            tempTableName: tempTableName);
}
