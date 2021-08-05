import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';

typedef QueryElementListCallback = Function(List<QueryElement>);

class FieldsSelectionPage extends HookWidget {
  const FieldsSelectionPage({Key? key, required this.onSelected})
      : super(key: key);

  final QueryElementListCallback onSelected;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryTablesBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;
    final theme = Theme.of(context);
    final selectedFields = useState<List<QueryElement>>(
      List.empty(growable: true),
    );
    final tables = bloc.state.tables;

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.selectFields),
        actions: [
          TextButton(
            onPressed: () {
              onSelected(selectedFields.value);
              Navigator.pop(context);
            },
            child: Text(
              localizations.save,
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
          if (item.value.type == QueryElementType.column) {
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
