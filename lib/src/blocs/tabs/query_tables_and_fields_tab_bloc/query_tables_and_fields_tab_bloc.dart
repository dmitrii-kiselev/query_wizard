import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';

class QueryTablesAndFieldsTabBloc
    extends Bloc<QueryTablesAndFieldsTabEvent, QueryTablesAndFieldsTabState> {
  QueryTablesAndFieldsTabBloc(QueryTablesAndFieldsTabState initialState)
      : super(initialState);

  @override
  Stream<QueryTablesAndFieldsTabState> mapEventToState(
      QueryTablesAndFieldsTabEvent event) async* {
    yield QueryTablesAndFieldsInitial(
        sources: state.sources, tables: state.tables, fields: state.fields);

    if (event is QueryTablesAndFieldsTabInitialized) {
      yield QueryTablesAndFieldsTabChanged(
          sources: event.sources, tables: event.tables, fields: event.fields);
    }
  }
}
