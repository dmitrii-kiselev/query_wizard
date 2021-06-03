import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/repositories.dart';

class QueryWizardBloc extends Bloc<QueryWizardEvent, QueryWizardState> {
  QueryWizardBloc(
      {required this.sourcesBloc,
      required this.tablesBloc,
      required this.fieldsBloc,
      required this.joinsTabBloc,
      required this.aggregatesBloc,
      required this.groupingsBloc,
      required this.queryUnionsBloc,
      required this.conditionsTabBloc,
      required this.batchTabBloc,
      required this.orderTabBloc,
      required this.queryWizardRepository,
      QueryWizardState? initialState})
      : super(initialState ?? QueryWizardInitial());

  final QuerySourcesBloc sourcesBloc;
  final QueryTablesBloc tablesBloc;
  final QueryFieldsBloc fieldsBloc;
  final QueryJoinsTabBloc joinsTabBloc;
  final QueryAggregatesBloc aggregatesBloc;
  final QueryGroupingsBloc groupingsBloc;
  final QueryConditionsTabBloc conditionsTabBloc;
  final QueryUnionsBloc queryUnionsBloc;
  final QueryOrderTabBloc orderTabBloc;
  final QueryBatchTabBloc batchTabBloc;
  final QueryWizardRepository queryWizardRepository;

  Query? currentQuery;
  QueryBatch? currentQueryButch;

  @override
  Stream<QueryWizardState> mapEventToState(QueryWizardEvent event) async* {
    if (event is QuerySchemaRequested) {
      yield QueryWizardLoadInProgress();
      try {
        late QuerySchema querySchema;
        if (event.query != "") {
          querySchema = await queryWizardRepository.parseQuery(event.query);
        } else {
          querySchema = QuerySchema.empty();
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
    currentQueryButch = queryBatch;
    queryUnionsBloc.add(QueriesInitialized(queries: queryBatch.queries));

    changeQuery(queryBatch.queries.first);
  }

  void changeQuery(Query query) {
    currentQuery = query;

    sourcesBloc.add(QuerySourcesInitialized(sources: query.sources));
    tablesBloc.add(QueryTablesInitialized(tables: query.tables));
    fieldsBloc.add(QueryFieldsInitialized(fields: query.fields));
    joinsTabBloc.add(QueryJoinsInitialized(joins: query.joins));

    aggregatesBloc
        .add(QueryAggregatesInitialized(aggregates: query.aggregates));

    groupingsBloc.add(QueryGroupingsInitialized(groupings: query.groupings));
    conditionsTabBloc
        .add(QueryConditionsInitialized(conditions: query.conditions));

    orderTabBloc.add(QueryOrderTabInitialized(sortings: query.sortings));
  }
}
