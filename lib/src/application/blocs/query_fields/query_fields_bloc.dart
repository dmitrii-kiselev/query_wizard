import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_fields_event.dart';

part 'query_fields_state.dart';

@lazySingleton
class QueryFieldsBloc extends Bloc<QueryFieldsEvent, QueryFieldsState> {
  QueryFieldsBloc() : super(QueryFieldsInitial());

  @override
  Stream<QueryFieldsState> mapEventToState(QueryFieldsEvent event) async* {
    yield QueryFieldsInitial(fields: state.fields);

    if (event is QueryFieldsInitialized) {
      yield* _mapQueryFieldsInitializedToState(event);
    } else if (event is QueryFieldAdded) {
      yield* _mapQueryFieldAddedToState(event);
    } else if (event is QueryFieldUpdated) {
      yield* _mapQueryFieldUpdatedToState(event);
    } else if (event is QueryFieldCopied) {
      yield* _mapQueryFieldCopiedToState(event);
    } else if (event is QueryFieldDeleted) {
      yield* _mapQueryFieldDeletedToState(event);
    } else if (event is QueryFieldOrderChanged) {
      yield* _mapQueryFieldOrderChangedToState(event);
    }
  }

  Stream<QueryFieldsState> _mapQueryFieldsInitializedToState(
    QueryFieldsInitialized event,
  ) async* {
    yield QueryFieldsChanged(fields: event.fields);
  }

  Stream<QueryFieldsState> _mapQueryFieldAddedToState(
    QueryFieldAdded event,
  ) async* {
    state.fields.add(event.field);
    yield QueryFieldsChanged(fields: state.fields);
  }

  Stream<QueryFieldsState> _mapQueryFieldUpdatedToState(
    QueryFieldUpdated event,
  ) async* {
    state.fields.update(event.field);
    yield QueryFieldsChanged(fields: state.fields);
  }

  Stream<QueryFieldsState> _mapQueryFieldCopiedToState(
    QueryFieldCopied event,
  ) async* {
    final field = state.fields.findById(event.id);
    state.fields.add(field.copy());
    yield QueryFieldsChanged(fields: state.fields);
  }

  Stream<QueryFieldsState> _mapQueryFieldDeletedToState(
    QueryFieldDeleted event,
  ) async* {
    state.fields.removeWhere((f) => f.id == event.id);
    yield QueryFieldsChanged(fields: state.fields);
  }

  Stream<QueryFieldsState> _mapQueryFieldOrderChangedToState(
    QueryFieldOrderChanged event,
  ) async* {
    var newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final field = state.fields.removeAt(event.oldIndex);
    state.fields.insert(newIndex, field);

    yield QueryFieldsChanged(fields: state.fields);
  }
}
