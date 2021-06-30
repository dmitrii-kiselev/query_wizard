import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/presentation.dart';

class QueryGroupingsTab extends HookWidget {
  const QueryGroupingsTab({Key? key}) : super(key: key);

  List<Widget> _buildBars() {
    return [
      const QueryGroupingsBar(),
      const QueryAggregatesBar(),
    ];
  }

  Widget _getBar(int index) {
    final bars = _buildBars();
    return bars[index];
  }

  List<BottomNavigationBarItem> _buildBottomNavigationBarItems(
    QueryWizardLocalizations localizations,
  ) {
    return [
      BottomNavigationBarItem(
        icon: const Icon(Icons.group_work_rounded),
        label: localizations.groupings,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.bar_chart_rounded),
        label: localizations.aggregates,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final currentIndex = useState(0);

    return Scaffold(
      body: Center(
        child: PageTransitionSwitcher(
          transitionBuilder: (child, animation, secondaryAnimation) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: _getBar(currentIndex.value),
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
        backgroundColor: colorScheme.surface,
      ),
    );
  }
}
