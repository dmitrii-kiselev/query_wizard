import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/application.dart';

@lazySingleton
class QueryMoreBloc extends Bloc<QueryMoreEvent, QueryMoreState> {
  QueryMoreBloc() : super(QueryMoreInitial());

  @override
  Stream<QueryMoreState> mapEventToState(QueryMoreEvent event) async* {
    yield QueryMoreInitial();

    if (event is QueryMoreInitialized) {
      yield* _mapQueryMoreInitializedToState(event);
    } else if (event is QueryMoreChanged) {
      yield* _mapQueryMoreChangedToState(event);
    }
  }

  Stream<QueryMoreState> _mapQueryMoreInitializedToState(
      QueryMoreInitialized event) async* {
    yield QueryMoreChangedState(
        isTop: event.isTop,
        topCounter: event.topCounter,
        isDistinct: event.isDistinct,
        queryType: event.queryType,
        tempTableName: event.tempTableName);
  }

  Stream<QueryMoreState> _mapQueryMoreChangedToState(
      QueryMoreChanged event) async* {
    yield QueryMoreChangedState(
        isTop: event.isTop,
        topCounter: event.topCounter,
        isDistinct: event.isDistinct,
        queryType: event.queryType,
        tempTableName: event.tempTableName);
  }
}
