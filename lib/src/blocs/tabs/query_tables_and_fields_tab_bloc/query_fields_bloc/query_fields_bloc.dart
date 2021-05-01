import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';

class QueryFieldsBloc extends Bloc<QueryFieldsEvent, QueryFieldsState> {
  QueryFieldsBloc(QueryFieldsState initialState) : super(initialState);

  @override
  Stream<QueryFieldsState> mapEventToState(QueryFieldsEvent event) async* {
    yield QueryFieldsInitial(fields: state.fields);

    if (event is QueryFieldsInitialized) {
      yield QueryFieldsChanged(fields: event.fields);
    }

    if (event is QueryFieldAdded) {
      state.fields.add(event.field);
      yield QueryFieldsChanged(fields: state.fields);
    }

    if (event is QueryFieldEdited) {
      state.fields.removeAt(event.index);
      state.fields.insert(event.index, event.field);

      yield QueryFieldsChanged(fields: state.fields);
    }

    if (event is QueryFieldCopied) {
      state.fields.add(event.field);
      yield QueryFieldsChanged(fields: state.fields);
    }

    if (event is QueryFieldRemoved) {
      state.fields.removeAt(event.index);
      yield QueryFieldsChanged(fields: state.fields);
    }

    if (event is QueryFieldOrderChanged) {
      var newIndex = event.newIndex;
      if (event.oldIndex < newIndex) {
        newIndex -= 1;
      }

      final field = state.fields.removeAt(event.oldIndex);
      state.fields.insert(newIndex, field);

      yield QueryFieldsChanged(fields: state.fields);
    }
  }
}
