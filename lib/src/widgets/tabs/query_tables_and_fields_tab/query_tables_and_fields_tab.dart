import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/widgets.dart';

class QueryTablesAndFieldsTab extends HookWidget {
  final _currentIndex = useState(0);

  QueryTablesAndFieldsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    List<DbElement> columns1 = [
      DbElement(name: 'Table1.Field1', nodeType: DbNodeType.column),
      DbElement(name: 'Table1.Field2', nodeType: DbNodeType.column),
      DbElement(name: 'Table1.Field3', nodeType: DbNodeType.column),
    ];

    List<DbElement> columns2 = [
      DbElement(name: 'Table2.Field1', nodeType: DbNodeType.column),
      DbElement(name: 'Table2.Field2', nodeType: DbNodeType.column),
      DbElement(name: 'Table2.Field3', nodeType: DbNodeType.column),
    ];

    List<DbElement> columns3 = [
      DbElement(name: 'Table3.Field1', nodeType: DbNodeType.column),
      DbElement(name: 'Table3.Field2', nodeType: DbNodeType.column),
      DbElement(name: 'Table3.Field3', nodeType: DbNodeType.column),
    ];

    final data = [
      DbElement.withElements(
          name: 'Table1', nodeType: DbNodeType.table, elements: columns1),
      DbElement.withElements(
          name: 'Table2', nodeType: DbNodeType.table, elements: columns2),
      DbElement.withElements(
          name: 'Table3', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table4', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table5', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table6', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table7', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table8', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table9', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table10', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table11', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table12', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table13', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table14', nodeType: DbNodeType.table, elements: columns3),
      DbElement.withElements(
          name: 'Table15', nodeType: DbNodeType.table, elements: columns3),
    ];

    final tabs = [
      QuerySources(
        sources: data,
      ),
      QueryTables(
        tables: data,
      ),
      QueryFields(
        fields: data,
      )
    ];
    final bottomNavigationBarItems = <BottomNavigationBarItem>[
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

    return Scaffold(
      body: BlocBuilder<QueryTablesAndFieldsTabBloc,
          QueryTablesAndFieldsTabState>(builder: (context, state) {
        if (state is QueryTablesAndFieldsTabChanged) {
          return Center(
            child: PageTransitionSwitcher(
              child: tabs[_currentIndex.value],
              transitionBuilder: (child, animation, secondaryAnimation) {
                return FadeThroughTransition(
                  child: child,
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                );
              },
            ),
          );
        }

        return Center(child: CircularProgressIndicator());
      }),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        items: bottomNavigationBarItems,
        currentIndex: _currentIndex.value,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: textTheme.caption!.fontSize!,
        unselectedFontSize: textTheme.caption!.fontSize!,
        onTap: (index) {
          _currentIndex.value = index;
        },
        selectedItemColor: colorScheme.onPrimary,
        unselectedItemColor: colorScheme.onPrimary.withOpacity(0.38),
        backgroundColor: colorScheme.primary,
      ),
    );
  }
}
