import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_tables_bloc.freezed.dart';

part 'query_tables_event.dart';

part 'query_tables_state.dart';

@lazySingleton
class QueryTablesBloc extends Bloc<QueryTablesEvent, QueryTablesState> {
  QueryTablesBloc() : super(QueryTablesState.initial());

  @override
  Stream<QueryTablesState> mapEventToState(QueryTablesEvent event) async* {
    yield state.copyWith(
      isChanging: true,
      tables: state.tables,
    );

    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
          isChanging: false,
          tables: e.tables,
        );
      },
      tableAdded: (e) async* {
        state.tables.add(e.table);
        yield state.copyWith(
          isChanging: false,
          tables: state.tables,
        );
      },
      tableUpdated: (e) async* {
        state.tables.removeAt(e.index);
        state.tables.insert(e.index, e.table);

        yield state.copyWith(
          isChanging: false,
          tables: state.tables,
        );
      },
      tableCopied: (e) async* {
        state.tables.add(e.table.copyWith());
        yield state.copyWith(
          isChanging: false,
          tables: state.tables,
        );
      },
      tableDeleted: (e) async* {
        state.tables.removeAt(e.index);
        yield state.copyWith(
          isChanging: false,
          tables: state.tables,
        );
      },
      tableOrderChanged: (e) async* {
        var newIndex = e.newIndex;
        if (e.oldIndex < newIndex) {
          newIndex -= 1;
        }

        final item = state.tables.removeAt(e.oldIndex);
        state.tables.insert(newIndex, item);
        yield state.copyWith(
          isChanging: false,
          tables: state.tables,
        );
      },
    );
  }
}
