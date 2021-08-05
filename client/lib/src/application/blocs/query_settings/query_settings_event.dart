part of 'query_settings_bloc.dart';

abstract class QuerySettingsEvent extends Equatable {
  final bool isTop;
  final int topCounter;
  final bool isDistinct;
  final QueryType queryType;
  final String tempTableName;

  const QuerySettingsEvent({
    required this.isTop,
    required this.topCounter,
    required this.isDistinct,
    required this.queryType,
    required this.tempTableName,
  });

  @override
  List<Object?> get props => [
        isTop,
        topCounter,
        isDistinct,
        queryType,
        tempTableName,
      ];
}

class QuerySettingsInitialized extends QuerySettingsEvent {
  const QuerySettingsInitialized({
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

class QuerySettingsChanged extends QuerySettingsEvent {
  const QuerySettingsChanged({
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
