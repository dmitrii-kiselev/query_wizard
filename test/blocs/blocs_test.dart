import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

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

    test('QueryWizardLoadSuccess initialized', () {
      final columns = [
        DbElement(name: 'Field 1', nodeType: DbNodeType.column),
        DbElement(name: 'Field 2', nodeType: DbNodeType.column),
        DbElement(name: 'Field 3', nodeType: DbNodeType.column),
      ];
      final event = QueryWizardLoadSuccess(dbElements: columns);

      expect(event.props, equals([event.dbElements]));
    });

    test('QueryWizardLoadFailure initialized', () {
      final event = QueryWizardLoadFailure();

      expect(event.props, equals([]));
    });
  });

  group('QueryWizardState', () {
    test('SourcesRequested initialized', () {
      final event = SourcesRequested();

      expect(event.props, equals([]));
    });
  });
}
