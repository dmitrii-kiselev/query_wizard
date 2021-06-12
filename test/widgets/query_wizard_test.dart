import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/infrastructure.dart';
import 'package:query_wizard/presentation.dart';

void main() {
  testWidgets('Query Wizard initialized smoke test',
      (WidgetTester tester) async {
    await GetIt.instance.reset();
    configureDependencies(Environment.dev);

    await tester.pumpWidget(QueryWizard(), Duration(milliseconds: 1000));
    await tester.pumpAndSettle(Duration(milliseconds: 1000));

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

  testWidgets('Query Wizard not initialized smoke test',
      (WidgetTester tester) async {
    await GetIt.instance.reset();
    configureDependencies(Environment.test);

    await tester.pumpWidget(QueryWizard(), Duration(milliseconds: 1000));
    await tester.pumpAndSettle(Duration(milliseconds: 1000));

    expect(find.text('Query Wizard'), findsNothing);
    expect(find.text('Something went wrong!'), findsOneWidget);
  });

  testWidgets('Tabs changes smoke test', (WidgetTester tester) async {
    await GetIt.instance.reset();
    configureDependencies(Environment.dev);

    await tester.pumpWidget(QueryWizard(), Duration(milliseconds: 1000));
    await tester.pumpAndSettle(Duration(milliseconds: 1000));
    await tester.tap(find.byKey(ValueKey('Joins')));

    expect(find.byKey(ValueKey('Tables and fields')), findsOneWidget);
    expect(find.byKey(ValueKey('Joins')), findsOneWidget);
  });
}
