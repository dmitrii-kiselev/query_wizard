import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:query_wizard/blocs.dart';

import 'package:query_wizard/infrastructure.dart';
import 'package:query_wizard/repositories.dart';

var log = [];

main() {
  setUp(() {
    log = [];
  });

  test('onEvent', overridePrint(() {
    final observer = QueryWizardBlocObserver();
    final event = 'event';
    final client = QueryWizardApiClient();
    final repository = QueryWizardRepository(queryWizardApiClient: client);
    final bloc = buildQueryWizardBloc(repository);

    observer.onEvent(bloc, event);

    expect(log, ['onEvent $event']);
  }));

  test('onTransition', overridePrint(() {
    final observer = QueryWizardBlocObserver();
    final client = QueryWizardApiClient();
    final repository = QueryWizardRepository(queryWizardApiClient: client);
    final bloc = buildQueryWizardBloc(repository);
    final state = '';
    final event = 'event';
    final transition = Transition<String, String>(
        currentState: state, event: event, nextState: state);

    observer.onTransition(bloc, transition);

    expect(log, ['onTransition $transition']);
  }));

  test('onError', overridePrint(() {
    final observer = QueryWizardBlocObserver();
    final error = 'error';
    final client = QueryWizardApiClient();
    final repository = QueryWizardRepository(queryWizardApiClient: client);
    final bloc = buildQueryWizardBloc(repository);

    observer.onError(bloc, error, StackTrace.empty);

    expect(log, ['onError $error']);
  }));
}

QueryWizardBloc buildQueryWizardBloc(
    QueryWizardRepository queryWizardRepository) {
  final sourcesBloc = QuerySourcesBloc(
      queryWizardRepository: queryWizardRepository,
      initialState: QuerySourcesInitial());

  final tablesBloc = QueryTablesBloc();
  final fieldsBloc = QueryFieldsBloc();

  final joinsTabBloc = QueryJoinsTabBloc();
  final aggregatesTabBloc = QueryAggregatesBloc();
  final groupingsTabBloc = QueryGroupingsBloc();
  final conditionsTabBloc = QueryConditionsTabBloc();
  final queryUnionsBloc = QueryUnionsBloc();
  final orderTabBloc = QueryOrderTabBloc();
  final batchTabBloc = QueryBatchTabBloc();
  final queryWizardBloc = QueryWizardBloc(
      sourcesBloc: sourcesBloc,
      tablesBloc: tablesBloc,
      fieldsBloc: fieldsBloc,
      joinsTabBloc: joinsTabBloc,
      aggregatesBloc: aggregatesTabBloc,
      groupingsBloc: groupingsTabBloc,
      conditionsTabBloc: conditionsTabBloc,
      queryUnionsBloc: queryUnionsBloc,
      orderTabBloc: orderTabBloc,
      batchTabBloc: batchTabBloc,
      queryWizardRepository: queryWizardRepository);

  return queryWizardBloc;
}

void Function() overridePrint(void testFn()) => () {
      var spec = new ZoneSpecification(print: (_, __, ___, String msg) {
        log.add(msg);
      });

      return Zone.current.fork(specification: spec).run<void>(testFn);
    };
