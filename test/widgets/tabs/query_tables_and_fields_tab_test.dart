import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/repositories.dart';
import 'package:query_wizard/widgets.dart';

void main() {
  testWidgets('Tables and fields initialized', (WidgetTester tester) async {
    final QueryWizardRepository queryWizardRepository = QueryWizardRepository(
      queryWizardClient: DesignTimeQueryWizardClient(),
    );

    await tester
        .pumpWidget(QueryWizard(queryWizardRepository: queryWizardRepository));
    await tester.pumpAndSettle();

    expect(find.text('Database'), findsOneWidget);
  });
}
