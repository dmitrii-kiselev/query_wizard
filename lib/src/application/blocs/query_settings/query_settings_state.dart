part of 'query_settings_bloc.dart';

abstract class QuerySettingsState extends Equatable {
  const QuerySettingsState({
    required this.isTop,
    required this.topCounter,
    required this.isDistinct,
    required this.queryType,
    required this.tempTableName,
  });

  final bool isTop;
  final int topCounter;
  final bool isDistinct;
  final QueryType queryType;
  final String tempTableName;

  @override
  List<Object?> get props => [
        isTop,
        topCounter,
        isDistinct,
        queryType,
        tempTableName,
      ];
}

class QuerySettingsInitial extends QuerySettingsState {
  const QuerySettingsInitial()
      : super(
          isTop: false,
          topCounter: 0,
          isDistinct: false,
          queryType: QueryType.selectQuery,
          tempTableName: '',
        );
}

class QuerySettingsChangedState extends QuerySettingsState {
  const QuerySettingsChangedState({
    required bool isTop,
    required int topCounter,
    required bool isDistinct,
    required QueryType queryType,
    required String tempTableName,
  }) : super(
          isTop: isTop,
          topCounter: topCounter,
          isDistinct: isDistinct,
          queryType: queryType,
          tempTableName: tempTableName,
        );
}
