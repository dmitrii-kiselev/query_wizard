import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/infrastructure.dart';

import '../query_wizard_test_configuration.dart';

void main() {
  testWidgets('Tables and fields initialized', (WidgetTester tester) async {
    configureDependencies(Environment.dev);

    await tester.pumpWidget(
      const QueryWizardTest(),
    );
    await tester.pumpAndSettle();

    expect(find.text('Database'), findsNothing);
  });
}
