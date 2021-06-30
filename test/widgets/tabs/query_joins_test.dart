import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/infrastructure.dart';

import '../query_wizard_test_configuration.dart';

void main() {
  testWidgets('Joins tab initialized', (WidgetTester tester) async {
    configureDependencies(Environment.dev);

    await tester.pumpWidget(
      const QueryWizardTest(),
      const Duration(milliseconds: 1000),
    );
    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
    await tester.tap(find.byKey(const ValueKey('Joins')));

    expect(find.byKey(const ValueKey('0')), findsNothing);
    expect(find.byKey(const ValueKey('1')), findsNothing);
    expect(find.byKey(const ValueKey('2')), findsNothing);
  });
}
