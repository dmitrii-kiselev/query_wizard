import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:split_view/split_view.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/presentation.dart';

class QueryTablesAndFieldsTab extends HookWidget {
  const QueryTablesAndFieldsTab({Key? key, this.isDesktop = true})
      : super(key: key);

  final bool isDesktop;

  List<Widget> _buildBars() {
    return [
      const QuerySourcesBar(),
      const QueryTablesBar(),
      const QueryFieldsBar(),
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
        icon: const Icon(Icons.source_rounded),
        label: localizations.database,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.table_rows_rounded),
        label: localizations.tables,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.horizontal_rule_rounded),
        label: localizations.fields,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final currentIndex = useState(0);

    if (isDesktop) {
      return SplitView(
        viewMode: SplitViewMode.Horizontal,
        gripSize: 6,
        controller: SplitViewController(limits: [null, WeightLimit(max: 0.7)]),
        children: const [
          QuerySourcesBar(),
          QueryTablesBar(),
          QueryFieldsBar(),
        ],
      );
    }

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
      ),
    );
  }
}
