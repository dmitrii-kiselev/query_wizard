import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryMoreTabState extends Equatable {
  const QueryMoreTabState(
      {required this.isTop,
      required this.topCounter,
      required this.isDistinct,
      required this.queryType,
      required this.tempTableName});

  final bool isTop;
  final int topCounter;
  final bool isDistinct;
  final QueryType queryType;
  final String tempTableName;

  @override
  List<Object?> get props =>
      [isTop, topCounter, isDistinct, queryType, tempTableName];
}

class QueryMoreTabInitial extends QueryMoreTabState {
  QueryMoreTabInitial({isTop, topCounter, isDistinct, queryType, tempTableName})
      : super(
            isTop: isTop,
            topCounter: topCounter,
            isDistinct: isDistinct,
            queryType: queryType,
            tempTableName: tempTableName);
}

class QueryMoreTabChangedState extends QueryMoreTabState {
  QueryMoreTabChangedState(
      {isTop, topCounter, isDistinct, queryType, tempTableName})
      : super(
            isTop: isTop,
            topCounter: topCounter,
            isDistinct: isDistinct,
            queryType: queryType,
            tempTableName: tempTableName);
}
