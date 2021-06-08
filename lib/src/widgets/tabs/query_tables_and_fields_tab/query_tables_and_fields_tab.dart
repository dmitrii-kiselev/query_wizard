import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/widgets.dart';

class QueryTablesAndFieldsTab extends HookWidget {
  const QueryTablesAndFieldsTab({Key? key}) : super(key: key);

  List<Widget> _buildBars() {
    return [QuerySourcesBar(), QueryTablesBar(), QueryFieldsBar()];
  }

  Widget _getBar(int index) {
    final bars = _buildBars();
    return bars[index];
  }

  List<BottomNavigationBarItem> _buildBottomNavigationBarItems(
      QueryWizardLocalizations? localizations) {
    return [
      BottomNavigationBarItem(
        icon: const Icon(Icons.source_rounded),
        label: localizations?.database ?? 'Database',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.table_rows_rounded),
        label: localizations?.tables ?? 'Tables',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.horizontal_rule_rounded),
        label: localizations?.fields ?? 'Fields',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    final localizations = QueryWizardLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Center(
        child: PageTransitionSwitcher(
          child: _getBar(currentIndex.value),
          transitionBuilder: (child, animation, secondaryAnimation) {
            return FadeThroughTransition(
              child: child,
              animation: animation,
              secondaryAnimation: secondaryAnimation,
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        items: _buildBottomNavigationBarItems(localizations),
        currentIndex: currentIndex.value,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: textTheme.caption!.fontSize!,
        unselectedFontSize: textTheme.caption!.fontSize!,
        onTap: (index) {
          currentIndex.value = index;
        },
        selectedItemColor: colorScheme.onPrimary,
        unselectedItemColor: colorScheme.onPrimary.withOpacity(0.38),
        backgroundColor: colorScheme.primary,
      ),
    );
  }
}
