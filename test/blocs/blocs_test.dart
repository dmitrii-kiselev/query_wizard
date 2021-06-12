import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

void main() {
  group('QueryWizardState', () {
    test('QueryWizardInitial initialized', () {
      final event = QueryWizardInitial();

      expect(event.props, equals([]));
    });

    test('QueryWizardLoadInProgress initialized', () {
      final event = QueryWizardLoadInProgress();

      expect(event.props, equals([]));
    });

    test('QueryWizardInitialized initialized', () {
      final columns = [
        QueryElement(name: 'Field 1', type: QueryElementType.column),
        QueryElement(name: 'Field 2', type: QueryElementType.column),
        QueryElement(name: 'Field 3', type: QueryElementType.column),
      ];
      final event = QuerySourcesInitialized(sources: columns);

      expect(event.props, equals([event.sources]));
    });

    test('QueryWizardLoadFailure initialized', () {
      final event = QueryWizardLoadFailure();

      expect(event.props, equals([]));
    });
  });

  group('QueryWizardState', () {
    test('SourcesRequested initialized', () {
      final event = QuerySourcesRequested();

      expect(event.props, equals([]));
    });
  });
}
