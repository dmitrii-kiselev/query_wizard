import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_settings_event.dart';

part 'query_settings_state.dart';

@lazySingleton
class QuerySettingsBloc extends Bloc<QuerySettingsEvent, QuerySettingsState> {
  QuerySettingsBloc() : super(const QuerySettingsInitial());

  @override
  Stream<QuerySettingsState> mapEventToState(QuerySettingsEvent event) async* {
    yield const QuerySettingsInitial();

    if (event is QuerySettingsInitialized) {
      yield* _mapQuerySettingsInitializedToState(event);
    } else if (event is QuerySettingsChanged) {
      yield* _mapQuerySettingsChangedToState(event);
    }
  }

  Stream<QuerySettingsState> _mapQuerySettingsInitializedToState(
    QuerySettingsInitialized event,
  ) async* {
    yield QuerySettingsChangedState(
      isTop: event.isTop,
      topCounter: event.topCounter,
      isDistinct: event.isDistinct,
      queryType: event.queryType,
      tempTableName: event.tempTableName,
    );
  }

  Stream<QuerySettingsState> _mapQuerySettingsChangedToState(
    QuerySettingsChanged event,
  ) async* {
    yield QuerySettingsChangedState(
      isTop: event.isTop,
      topCounter: event.topCounter,
      isDistinct: event.isDistinct,
      queryType: event.queryType,
      tempTableName: event.tempTableName,
    );
  }
}
