import 'package:flutter_test/flutter_test.dart';
import 'package:query_wizard/src/blocs/blocs.dart';
import 'package:query_wizard/src/models/models.dart';

void main() {
  test('SourcesRequested initialized', () {
    final event = SourcesRequested();

    expect(event.props, equals([]));
  });

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
}
