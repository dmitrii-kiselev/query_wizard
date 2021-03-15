// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/main.dart';

void main() {
  testWidgets('Query Wizard initialized smoke test',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(QueryWizard());

    // Verify that widgets exists.
    expect(find.text('Query Wizard'), findsOneWidget);
    expect(find.byKey(ValueKey('Tables and fields')), findsOneWidget);
    expect(find.byKey(ValueKey('Joins')), findsOneWidget);
    expect(find.byKey(ValueKey('Grouping')), findsOneWidget);
    expect(find.byKey(ValueKey('Conditions')), findsOneWidget);
    expect(find.byKey(ValueKey('More')), findsOneWidget);
    expect(find.byKey(ValueKey('Unions/Aliases')), findsOneWidget);
    expect(find.byKey(ValueKey('Order')), findsOneWidget);
    expect(find.byKey(ValueKey('Query batch')), findsOneWidget);
  });

  testWidgets('Tabs changes smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(QueryWizard());
    await tester.tap(find.byKey(ValueKey('Joins')));
    await tester.pumpAndSettle();

    // Verify that widgets exists.
    expect(find.byKey(ValueKey('Tables and fields')), findsOneWidget);
    expect(find.byKey(ValueKey('Joins')), findsOneWidget);
  });
}
