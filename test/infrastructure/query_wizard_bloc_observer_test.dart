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
    final block = QueryWizardBloc(queryWizardRepository: repository);

    observer.onEvent(block, event);

    expect(log, ['onEvent $event']);
  }));

  test('onTransition', overridePrint(() {
    final observer = QueryWizardBlocObserver();
    final client = QueryWizardApiClient();
    final repository = QueryWizardRepository(queryWizardApiClient: client);
    final block = QueryWizardBloc(queryWizardRepository: repository);
    final state = '';
    final event = 'event';
    final transition = Transition<String, String>(
        currentState: state, event: event, nextState: state);

    observer.onTransition(block, transition);

    expect(log, ['onTransition $transition']);
  }));

  test('onError', overridePrint(() {
    final observer = QueryWizardBlocObserver();
    final error = 'error';
    final client = QueryWizardApiClient();
    final repository = QueryWizardRepository(queryWizardApiClient: client);
    final block = QueryWizardBloc(queryWizardRepository: repository);

    observer.onError(block, error, StackTrace.empty);

    expect(log, ['onError $error']);
  }));
}

void Function() overridePrint(void testFn()) => () {
      var spec = new ZoneSpecification(print: (_, __, ___, String msg) {
        log.add(msg);
      });

      return Zone.current.fork(specification: spec).run<void>(testFn);
    };
