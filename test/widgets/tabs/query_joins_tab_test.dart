import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/repositories.dart';
import 'package:query_wizard/widgets.dart';

void main() {
  testWidgets('Joins tab initialized', (WidgetTester tester) async {
    final QueryWizardRepository queryWizardRepository = QueryWizardRepository(
      queryWizardApiClient: QueryWizardApiClient(),
    );

    await tester.pumpWidget(
        QueryWizard(queryWizardRepository: queryWizardRepository),
        Duration(milliseconds: 1000));
    await tester.pumpAndSettle(Duration(milliseconds: 1000));
    await tester.tap(find.byKey(ValueKey('Joins')));

    expect(find.byKey(ValueKey('0')), findsNothing);
    expect(find.byKey(ValueKey('1')), findsNothing);
    expect(find.byKey(ValueKey('2')), findsNothing);
  });
}
