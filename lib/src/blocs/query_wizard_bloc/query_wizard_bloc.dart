import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/repositories.dart';

class QueryWizardBloc extends Bloc<QueryWizardEvent, QueryWizardState> {
  final QuerySourcesBloc sourcesBloc;
  final QueryTablesBloc tablesBloc;
  final QueryFieldsBloc fieldsBloc;
  final QueryTablesAndFieldsTabBloc tablesAndFieldsTabBloc;
  final QueryJoinsTabBloc joinsTabBloc;
  final QueriesBloc queriesBloc;
  final QueryBatchTabBloc batchTabBloc;
  final QueryWizardRepository queryWizardRepository;

  QueryWizardBloc(
      {required this.sourcesBloc,
      required this.tablesBloc,
      required this.fieldsBloc,
      required this.tablesAndFieldsTabBloc,
      required this.joinsTabBloc,
      required this.queriesBloc,
      required this.batchTabBloc,
      required this.queryWizardRepository})
      : super(QueryWizardInitial());

  @override
  Stream<QueryWizardState> mapEventToState(QueryWizardEvent event) async* {
    if (event is QuerySchemaRequested) {
      yield QueryWizardLoadInProgress();
      try {
        late QuerySchema querySchema;
        if (event.query != "") {
          querySchema = await queryWizardRepository.parseQuery(event.query);
        } else {
          final query = Query(
              name: 'Query 1',
              sources: [],
              tables: [],
              fields: [],
              joins: [],
              groupings: [],
              aggregates: [],
              conditions: [],
              sortings: [],
              isTop: false,
              topCounter: 0,
              isDistinct: false);
          final batch = QueryBatch(
              name: 'Query batch 1',
              sources: [],
              queries: [query],
              aliases: Map.identity(),
              queryType: QueryType.selectQuery);

          querySchema = QuerySchema(queryBatches: [batch]);
        }

        batchTabBloc.add(
            QueryBatchesInitialized(queryBatches: querySchema.queryBatches));
        changeQueryBatch(querySchema.queryBatches.first);

        yield QueryWizardLoadSuccess(querySchema: querySchema);
      } catch (_) {
        yield QueryWizardLoadFailure();
      }
    }
  }

  void changeQueryBatch(QueryBatch queryBatch) {
    queriesBloc.add(QueriesInitialized(queries: queryBatch.queries));
    changeQuery(queryBatch.queries.first);
  }

  void changeQuery(Query query) {
    sourcesBloc.add(QuerySourcesInitialized(sources: query.sources));
    tablesBloc.add(QueryTablesInitialized(tables: query.tables));
    fieldsBloc.add(QueryFieldsInitialized(fields: query.fields));
    tablesAndFieldsTabBloc.add(QueryTablesAndFieldsTabInitialized(
        sources: query.sources, tables: query.tables, fields: query.fields));
    joinsTabBloc.add(QueryJoinsInitialized(joins: query.joins));
  }
}
