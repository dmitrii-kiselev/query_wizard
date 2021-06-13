import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

abstract class QueryMoreState extends Equatable {
  const QueryMoreState(
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

class QueryMoreInitial extends QueryMoreState {
  const QueryMoreInitial()
      : super(
            isTop: false,
            topCounter: 0,
            isDistinct: false,
            queryType: QueryType.selectQuery,
            tempTableName: '');
}

class QueryMoreChangedState extends QueryMoreState {
  const QueryMoreChangedState(
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
