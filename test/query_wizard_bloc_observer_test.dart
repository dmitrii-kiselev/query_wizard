import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/src/query_wizard_bloc_observer.dart';

var log = [];

main() {
  setUp(() {
    log = [];
  });

  test('onEvent', overridePrint(() {
    final observer = QueryWizardBlocObserver();
    final event = 'event';

    observer.onEvent(null, event);

    expect(log, ['onEvent $event']);
  }));

  test('onTransition', overridePrint(() {
    final observer = QueryWizardBlocObserver();
    final transition = null;

    observer.onTransition(null, null);

    expect(log, ['onTransition $transition']);
  }));

  test('onError', overridePrint(() {
    final observer = QueryWizardBlocObserver();
    final error = 'error';

    observer.onError(null, error, null);

    expect(log, ['onError $error']);
  }));
}

void Function() overridePrint(void testFn()) => () {
      var spec = new ZoneSpecification(print: (_, __, ___, String msg) {
        log.add(msg);
      });

      return Zone.current.fork(specification: spec).run<void>(testFn);
    };
