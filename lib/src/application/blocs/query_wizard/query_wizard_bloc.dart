import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

part 'query_wizard_event.dart';

part 'query_wizard_state.dart';

@lazySingleton
class QueryWizardBloc extends Bloc<QueryWizardEvent, QueryWizardState> {
  QueryWizardBloc({
    required this.sourcesBloc,
    required this.tablesBloc,
    required this.fieldsBloc,
    required this.joinsBloc,
    required this.aggregatesBloc,
    required this.groupingsBloc,
    required this.conditionsBloc,
    required this.queriesBloc,
    required this.settingsBloc,
    required this.ordersBloc,
    required this.batchesBloc,
    required this.queryWizardRepository,
  }) : super(const QueryWizardInitial());

  final QuerySourcesBloc sourcesBloc;
  final QueryTablesBloc tablesBloc;
  final QueryFieldsBloc fieldsBloc;
  final QueryJoinsBloc joinsBloc;
  final QueryAggregatesBloc aggregatesBloc;
  final QueryGroupingsBloc groupingsBloc;
  final QueryConditionsBloc conditionsBloc;
  final QuerySettingsBloc settingsBloc;
  final QueriesBloc queriesBloc;
  final QueryOrdersBloc ordersBloc;
  final QueryBatchesBloc batchesBloc;
  final IQueryWizardRepository queryWizardRepository;

  Query? currentQuery;
  QueryBatch? currentQueryButch;

  @override
  Stream<QueryWizardState> mapEventToState(QueryWizardEvent event) async* {
    if (event is QuerySchemaRequested) {
      yield const QueryWizardLoadInProgress();
      try {
        late QuerySchema querySchema;
        if (event.query != '') {
          querySchema = await queryWizardRepository.parseQuery(event.query);
        } else {
          querySchema = QuerySchema.empty();
        }

        batchesBloc.add(QueryBatchesInitialized(
          queryBatches: querySchema.queryBatches,
        ));

        changeQueryBatch(querySchema.queryBatches.first);

        yield QueryWizardLoadSuccess(querySchema: querySchema);
      } catch (_) {
        yield const QueryWizardLoadFailure();
      }
    }
  }

  void changeQueryBatch(QueryBatch queryBatch) {
    final query = queryBatch.queries.first;

    currentQueryButch = queryBatch;
    queriesBloc.add(QueriesInitialized(queries: queryBatch.queries));
    settingsBloc.add(QuerySettingsInitialized(
      isTop: query.isTop,
      topCounter: query.topCounter,
      isDistinct: query.isDistinct,
      queryType: queryBatch.queryType,
      tempTableName: queryBatch.tempTableName,
    ));

    changeQuery(query);
  }

  void changeQuery(Query query) {
    currentQuery = query;

    sourcesBloc.add(QuerySourcesInitialized(sources: query.sources));
    tablesBloc.add(QueryTablesInitialized(tables: query.tables));
    fieldsBloc.add(QueryFieldsInitialized(fields: query.fields));
    joinsBloc.add(QueryJoinsInitialized(joins: query.joins));

    aggregatesBloc.add(QueryAggregatesInitialized(
      aggregates: query.aggregates,
    ));

    groupingsBloc.add(QueryGroupingsInitialized(groupings: query.groupings));
    conditionsBloc.add(QueryConditionsInitialized(
      conditions: query.conditions,
    ));

    settingsBloc.add(QuerySettingsInitialized(
      isTop: query.isTop,
      topCounter: query.topCounter,
      isDistinct: query.isDistinct,
      queryType: settingsBloc.state.queryType,
      tempTableName: settingsBloc.state.tempTableName,
    ));

    ordersBloc.add(QueryOrdersInitialized(orders: query.orders));
  }
}
