import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

part 'query_wizard_bloc.freezed.dart';

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
    required this.queriesBloc,
    required this.conditionsBloc,
    required this.batchesBloc,
    required this.ordersBloc,
    required this.queryWizardRepository,
  }) : super(const QueryWizardState.initial());

  final QuerySourcesBloc sourcesBloc;
  final QueryTablesBloc tablesBloc;
  final QueryFieldsBloc fieldsBloc;
  final QueryJoinsBloc joinsBloc;
  final QueryAggregatesBloc aggregatesBloc;
  final QueryGroupingsBloc groupingsBloc;
  final QueryConditionsBloc conditionsBloc;
  final QueriesBloc queriesBloc;
  final QueryOrdersBloc ordersBloc;
  final QueryBatchesBloc batchesBloc;
  final IQueryWizardRepository queryWizardRepository;

  Query? currentQuery;
  QueryBatch? currentQueryButch;

  @override
  Stream<QueryWizardState> mapEventToState(QueryWizardEvent event) async* {
    yield* event.map(
      initialized: (e) async* {},
      querySchemaRequested: (e) async* {
        yield const QueryWizardState.loadInProgress();
        try {
          late QuerySchema querySchema;
          if (e.query != '') {
            querySchema = await queryWizardRepository.parseQuery(e.query);
          } else {
            querySchema = QuerySchema.empty();
          }

          batchesBloc.add(
            QueryBatchesEvent.initialized(
              batches: querySchema.queryBatches,
            ),
          );

          changeQueryBatch(querySchema.queryBatches.first);

          yield QueryWizardState.loadSuccess(querySchema: querySchema);
        } catch (_) {
          yield const QueryWizardState.loadFailure();
        }
      },
    );
  }

  void changeQueryBatch(QueryBatch queryBatch) {
    currentQueryButch = queryBatch;
    queriesBloc.add(
      QueriesEvent.initialized(queries: queryBatch.queries),
    );

    changeQuery(queryBatch.queries.first);
  }

  void changeQuery(Query query) {
    currentQuery = query;

    sourcesBloc.add(
      QuerySourcesEvent.initialized(sources: query.sources),
    );
    tablesBloc.add(
      QueryTablesEvent.initialized(tables: query.tables),
    );
    fieldsBloc.add(
      QueryFieldsEvent.initialized(fields: query.fields),
    );
    joinsBloc.add(
      QueryJoinsEvent.initialized(joins: query.joins),
    );

    aggregatesBloc.add(
      QueryAggregatesEvent.initialized(aggregates: query.aggregates),
    );

    groupingsBloc.add(
      QueryGroupingsEvent.initialized(groupings: query.groupings),
    );
    conditionsBloc.add(
      QueryConditionsEvent.initialized(conditions: query.conditions),
    );

    ordersBloc.add(
      QueryOrdersEvent.initialized(orders: query.orders),
    );
  }
}
