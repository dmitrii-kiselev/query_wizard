import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';

class QueryTablesAndFieldsTabBloc
    extends Bloc<QueryTablesAndFieldsTabEvent, QueryTablesAndFieldsTabState> {
  QueryTablesAndFieldsTabBloc(initialState) : super(initialState);

  @override
  Stream<QueryTablesAndFieldsTabState> mapEventToState(
      QueryTablesAndFieldsTabEvent event) async* {
    yield QueryTablesAndFieldsInitial(
        sources: state.sources, tables: state.tables, fields: state.fields);

    if (event is QueryTablesAndFieldsTabInitialized) {
      state.sources.clear();
      state.sources.addAll(event.sources);
      state.tables.clear();
      state.tables.addAll(event.tables);
      state.fields.clear();
      state.fields.addAll(event.fields);

      yield QueryTablesAndFieldsTabChanged(
          sources: state.sources, tables: state.tables, fields: state.fields);
    }
  }
}
