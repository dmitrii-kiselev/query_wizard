import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/src/repositories/repositories.dart';
import 'package:query_wizard/src/widgets/query_wizard.dart';

void main() {
  testWidgets('Tables and fields initialized', (WidgetTester tester) async {
    final QueryWizardRepository queryWizardRepository = QueryWizardRepository(
      queryWizardApiClient: QueryWizardApiClient(),
    );

    // Build our app and trigger a frame.
    await tester
        .pumpWidget(QueryWizard(queryWizardRepository: queryWizardRepository));
    await tester.pumpAndSettle();

    expect(find.text('Database'), findsOneWidget);
    expect(find.text('Tables'), findsOneWidget);
    expect(find.text('Fields'), findsOneWidget);
  });
}
