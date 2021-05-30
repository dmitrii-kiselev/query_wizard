import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/widgets.dart';

typedef DbElementListCallback = Function(List<DbElement>);

class FieldsSelectionPage extends HookWidget {
  const FieldsSelectionPage({required this.tables, required this.onSelected});

  final List<DbElement> tables;
  final DbElementListCallback onSelected;

  @override
  Widget build(BuildContext context) {
    final selectedFields =
        useState<List<DbElement>>(List.empty(growable: true));

    final localizations = QueryWizardLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizations?.selectFields ?? 'Select fields',
        ),
        actions: [
          TextButton(
            onPressed: () {
              onSelected(selectedFields.value);
              Navigator.pop(context);
            },
            child: Text(
              localizations?.save ?? 'Save',
              style: theme.textTheme.bodyText2?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
      body: SourcesTreeView(
        items: tables,
        onTap: (item) {
          if (item.value.nodeType == DbNodeType.column) {
            final fields = selectedFields.value.where((f) => f == item.value);
            if (fields.isEmpty) {
              selectedFields.value.add(item.value);
            }
          }
        },
      ),
    );
  }
}
