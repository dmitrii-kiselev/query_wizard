import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_more_bloc.freezed.dart';

part 'query_more_event.dart';

part 'query_more_state.dart';

@lazySingleton
class QueryMoreBloc extends Bloc<QueryMoreEvent, QueryMoreState> {
  QueryMoreBloc() : super(QueryMoreState.initial());

  @override
  Stream<QueryMoreState> mapEventToState(QueryMoreEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield QueryMoreState(
          isChanging: false,
          isTop: e.isTop,
          topCounter: e.topCounter,
          isDistinct: e.isDistinct,
          queryType: e.queryType,
          tempTableName: e.tempTableName,
        );
      },
      changed: (e) async* {
        yield QueryMoreState(
          isChanging: false,
          isTop: e.isTop,
          topCounter: e.topCounter,
          isDistinct: e.isDistinct,
          queryType: e.queryType,
          tempTableName: e.tempTableName,
        );
      },
    );
  }
}
