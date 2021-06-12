import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/infrastructure.dart';
import 'package:query_wizard/presentation.dart';

void main() {
  testWidgets('Query batch tab initialized', (WidgetTester tester) async {
    configureDependencies(Environment.dev);

    await tester.pumpWidget(QueryWizard(), Duration(milliseconds: 1000));
    await tester.pumpAndSettle(Duration(milliseconds: 1000));
    await tester.tap(find.byKey(ValueKey('Query batch')));

    expect(find.byKey(ValueKey('0')), findsNothing);
    expect(find.byKey(ValueKey('1')), findsNothing);
    expect(find.byKey(ValueKey('2')), findsNothing);
  });
}
