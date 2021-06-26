import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

void main() {
  group('QueryWizardState', () {
    test('QueryWizardInitial initialized', () {
      const event = QueryWizardInitial();

      expect(event.props, equals([]));
    });

    test('QueryWizardLoadInProgress initialized', () {
      const event = QueryWizardLoadInProgress();

      expect(event.props, equals([]));
    });

    test('QueryWizardInitialized initialized', () {
      final columns = [
        QueryElement(
          name: 'Field 1',
          type: QueryElementType.column,
          elements: List<QueryElement>.empty(growable: true),
        ),
        QueryElement(
          name: 'Field 2',
          type: QueryElementType.column,
          elements: List<QueryElement>.empty(growable: true),
        ),
        QueryElement(
          name: 'Field 3',
          type: QueryElementType.column,
          elements: List<QueryElement>.empty(growable: true),
        ),
      ];
      final event = QuerySourcesInitialized(sources: columns);

      expect(event.props, equals([event.sources]));
    });

    test('QueryWizardLoadFailure initialized', () {
      const event = QueryWizardLoadFailure();
      expect(event.props, equals([]));
    });
  });

  group('QueryWizardState', () {
    test('SourcesRequested initialized', () {
      const event = QuerySourcesRequested();
      expect(event.props, equals([]));
    });
  });
}
