import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/constants.dart';
import 'package:query_wizard/widgets.dart';

const _horizontalDesktopPadding = 81.0;

class TablesAndFields extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueryWizardBloc, QueryWizardState>(
        builder: (context, state) {
      if (state is QueryWizardLoadSuccess) {
        final localizations = QueryWizardLocalizations.of(context);
        final sources = state.dbElements;
        final tables = state.dbElements;
        final fields = state.dbElements.first.elements;

        final desktopCategoryItems = <TreeViewer>[
          TreeViewer(
            header: localizations?.database ?? '',
            items: sources,
            iconData: Icons.table_rows_rounded,
            child: SourcesTree(
                key: ValueKey('${localizations?.database ?? ''}DemoList'),
                dbElements: sources),
          ),
          TreeViewer(
            header: localizations?.tables ?? '',
            items: tables,
            iconData: Icons.table_rows_rounded,
            child: TablesTree(
                key: ValueKey('${localizations?.tables ?? ''}DemoList'),
                dbElements: sources),
          ),
          TreeViewer(
            header: localizations?.fields ?? '',
            items: fields,
            iconData: Icons.horizontal_rule_rounded,
            child: FieldsTree(
                key: ValueKey('${localizations?.fields ?? ''}DemoList'),
                dbElements: fields),
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
