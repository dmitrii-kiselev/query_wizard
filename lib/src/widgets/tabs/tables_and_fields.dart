import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/constants.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/widgets.dart';

const _horizontalDesktopPadding = 81.0;

class TablesAndFields extends StatefulWidget {
  @override
  _TablesAndFieldsState createState() => _TablesAndFieldsState();
}

class _TablesAndFieldsState extends State<TablesAndFields> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueryWizardBloc, QueryWizardState>(
        builder: (context, state) {
      if (state is QueryWizardLoadSuccess) {
        final localizations = QueryWizardLocalizations.of(context);
        final sources = state.dbElements;
        final tables = state.dbElements;
        final fields = state.dbElements.first.elements;

        final desktopCategoryItems = <_TreeViewer>[
          _TreeViewer(
            header: localizations.database,
            items: sources,
            iconData: Icons.table_rows_rounded,
          ),
          _TreeViewer(
            header: localizations.tables,
            items: tables,
            iconData: Icons.table_rows_rounded,
          ),
          _TreeViewer(
            header: localizations.fields,
            items: fields,
            iconData: Icons.horizontal_rule_rounded,
          ),
        ];

        return ListView(
          // Makes integration tests possible.
          key: const ValueKey('HomeListView'),
          padding: EdgeInsetsDirectional.only(
            top: firstHeaderDesktopTopPadding,
          ),
          children: [
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 1.1,
              padding: const EdgeInsets.symmetric(
                horizontal: _horizontalDesktopPadding,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: spaceBetween(28, desktopCategoryItems),
              ),
            ),
          ],
        );
      }

      return build(context);
    });
  }

  List<Widget> spaceBetween(double paddingBetween, List<Widget> children) {
    return [
      for (int index = 0; index < children.length; index++) ...[
        Flexible(
          child: children[index],
        ),
        if (index < children.length - 1) SizedBox(width: paddingBetween),
      ],
    ];
  }
}

class _TreeViewer extends StatelessWidget {
  const _TreeViewer({
    this.header,
    this.items,
    this.iconData,
  });

  final String header;
  final List<DbElement> items;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAlias,
      color: colorScheme.surface,
      child: Semantics(
        container: true,
        child: FocusTraversalGroup(
          policy: WidgetOrderTraversalPolicy(),
          child: Column(
            children: [
              _TreeViewerHeader(
                header: header,
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: colorScheme.background,
              ),
              Flexible(
                child: ListView.builder(
                  // Makes integration tests possible.
                  key: ValueKey('${header}DemoList'),
                  itemBuilder: (context, index) => TreeItem(
                      key: ValueKey(header),
                      item: items[index],
                      iconData: iconData),
                  itemCount: items.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TreeViewerHeader extends StatelessWidget {
  const _TreeViewerHeader({
    this.header,
  });

  final String header;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      // Makes integration tests possible.
      key: ValueKey('${header}CategoryHeader'),
      color: colorScheme.onBackground,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 8),
              child: Semantics(
                header: true,
                child: Text(
                  header,
                  style: Theme.of(context).textTheme.headline5.apply(
                        color: colorScheme.onSurface,
                      ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
