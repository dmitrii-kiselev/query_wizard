import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

import 'package:query_wizard/tabs/tables_and_fields.dart';

void main() {
  testWidgets('Tables and fields initialized', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      restorationScopeId: 'rootQueryWizard',
      title: 'Query Wizard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        ...QueryWizardLocalizations.localizationsDelegates,
      ],
      supportedLocales: QueryWizardLocalizations.supportedLocales,
      home: TablesAndFields(),
    ));
    await tester.pumpAndSettle();

    expect(find.text('Database'), findsOneWidget);
    expect(find.text('Tables'), findsOneWidget);
    expect(find.text('Fields'), findsOneWidget);
  });
}
