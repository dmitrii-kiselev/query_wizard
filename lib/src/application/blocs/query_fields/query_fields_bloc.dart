import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_fields_bloc.freezed.dart';

part 'query_fields_event.dart';

part 'query_fields_state.dart';

@lazySingleton
class QueryFieldsBloc extends Bloc<QueryFieldsEvent, QueryFieldsState> {
  QueryFieldsBloc() : super(QueryFieldsState.initial());

  @override
  Stream<QueryFieldsState> mapEventToState(QueryFieldsEvent event) async* {
    yield state.copyWith(
      isChanging: true,
      fields: state.fields,
    );

    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
          isChanging: false,
          fields: e.fields,
        );
      },
      fieldAdded: (e) async* {
        state.fields.add(e.field);
        yield state.copyWith(
          isChanging: false,
          fields: state.fields,
        );
      },
      fieldUpdated: (e) async* {
        state.fields.removeAt(e.index);
        state.fields.insert(e.index, e.field);

        yield state.copyWith(
          isChanging: false,
          fields: state.fields,
        );
      },
      fieldCopied: (e) async* {
        state.fields.add(e.field.copyWith());
        yield state.copyWith(
          isChanging: false,
          fields: state.fields,
        );
      },
      fieldDeleted: (e) async* {
        state.fields.removeAt(e.index);
        yield state.copyWith(
          isChanging: false,
          fields: state.fields,
        );
      },
      fieldOrderChanged: (e) async* {
        var newIndex = e.newIndex;
        if (e.oldIndex < newIndex) {
          newIndex -= 1;
        }

        final item = state.fields.removeAt(e.oldIndex);
        state.fields.insert(newIndex, item);

        yield state.copyWith(
          isChanging: false,
          fields: state.fields,
        );
      },
    );
  }
}
