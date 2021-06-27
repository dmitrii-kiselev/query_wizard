import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/infrastructure.dart';
import 'package:query_wizard/presentation.dart';

void main() {
  testWidgets('Conditions tab initialized', (WidgetTester tester) async {
    configureDependencies(Environment.dev);

    await tester.pumpWidget(
      const QueryWizard(),
      const Duration(milliseconds: 1000),
    );
    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
    await tester.tap(find.byKey(const ValueKey('Conditions')));

    expect(find.byKey(const ValueKey('0')), findsNothing);
    expect(find.byKey(const ValueKey('1')), findsNothing);
    expect(find.byKey(const ValueKey('2')), findsNothing);
  });
}
