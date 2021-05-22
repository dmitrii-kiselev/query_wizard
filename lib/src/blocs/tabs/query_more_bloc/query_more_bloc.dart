import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';

class QueryMoreTabBloc extends Bloc<QueryMoreTabEvent, QueryMoreTabState> {
  QueryMoreTabBloc({QueryMoreTabState? initialState})
      : super(initialState ?? QueryMoreTabInitial());

  @override
  Stream<QueryMoreTabState> mapEventToState(QueryMoreTabEvent event) async* {
    yield QueryMoreTabInitial();

    if (event is QueryMoreTabInitialized) {
      yield QueryMoreTabChangedState(
          isTop: event.isTop,
          topCounter: event.topCounter,
          isDistinct: event.isDistinct,
          queryType: event.queryType,
          tempTableName: event.tempTableName);
    }

    if (event is QueryMoreTabChanged) {
      yield QueryMoreTabChangedState(
          isTop: event.isTop,
          topCounter: event.topCounter,
          isDistinct: event.isDistinct,
          queryType: event.queryType,
          tempTableName: event.tempTableName);
    }
  }
}
