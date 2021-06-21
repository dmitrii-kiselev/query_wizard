import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

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
  const QueryMoreInitialized(
      {required bool isTop,
      required int topCounter,
      required bool isDistinct,
      required QueryType queryType,
      required String tempTableName})
      : super(
            isTop: isTop,
            topCounter: topCounter,
            isDistinct: isDistinct,
            queryType: queryType,
            tempTableName: tempTableName);
}

class QueryMoreChanged extends QueryMoreEvent {
  const QueryMoreChanged(
      {required bool isTop,
      required int topCounter,
      required bool isDistinct,
      required QueryType queryType,
      required String tempTableName})
      : super(
            isTop: isTop,
            topCounter: topCounter,
            isDistinct: isDistinct,
            queryType: queryType,
            tempTableName: tempTableName);
}
