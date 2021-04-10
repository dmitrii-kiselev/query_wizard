import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/repositories.dart';
import 'package:query_wizard/widgets.dart';

void main() {
  testWidgets('Joins tab initialized', (WidgetTester tester) async {
    final QueryWizardRepository queryWizardRepository = QueryWizardRepository(
      queryWizardApiClient: QueryWizardApiClient(),
    );

    await tester
        .pumpWidget(QueryWizard(queryWizardRepository: queryWizardRepository));
    await tester.tap(find.byKey(ValueKey('Joins')));
    await tester.pumpAndSettle();

    expect(find.byKey(Key('0')), findsOneWidget);
    expect(find.byKey(Key('1')), findsOneWidget);
    expect(find.byKey(Key('2')), findsOneWidget);
  });
}
