import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';

class QueryConditionsTab extends StatelessWidget {
  const QueryConditionsTab({Key? key}) : super(key: key);

  Widget _buildTitle(QueryCondition condition) {
    final field = condition.leftField;
    final tableName = field!.parent?.alias ?? field.parent!.name;
    final fieldName = field.name;

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: tableName,
            style: const TextStyle(color: SqlColorScheme.table),
          ),
          const TextSpan(
            text: '.',
            style: TextStyle(color: SqlColorScheme.dot),
          ),
          TextSpan(
            text: fieldName,
            style: const TextStyle(color: SqlColorScheme.column),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: condition.logicalCompareType.stringValue,
            style: const TextStyle(color: SqlColorScheme.dot),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: condition.rightField!.alias ?? condition.rightField!.name,
            style: const TextStyle(color: SqlColorScheme.parameter),
          ),
        ],
      ),
    );
  }

  void _navigateToQueryConditionPage({
    String? id,
    required BuildContext context,
  }) {
    final conditionsBloc = BlocProvider.of<QueryConditionsBloc>(context);
    final tables = BlocProvider.of<QueryTablesBloc>(context).state.tables;

    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => BlocProvider.value(
          value: conditionsBloc,
          child: _QueryConditionPage(id: id, tables: tables),
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryConditionsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    return BlocBuilder<QueryConditionsBloc, QueryConditionsState>(builder: (
      context,
      state,
    ) {
      if (state is QueryConditionsChanged) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.conditions.length,
            itemBuilder: (context, index) {
              final condition = state.conditions[index];

              return Card(
                key: ValueKey('$index'),
                child: ListTile(
                  leading: const Icon(Icons.filter_alt_rounded),
                  onTap: () => _navigateToQueryConditionPage(
                    id: condition.id,
                    context: context,
                  ),
                  title: _buildTitle(condition),
                  trailing: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.copy_outlined),
                        tooltip: localizations.copy,
                        onPressed: () {
                          bloc.add(QueryConditionCopied(id: condition.id));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.highlight_remove_outlined),
                        tooltip: localizations.remove,
                        onPressed: () {
                          bloc.add(QueryConditionDeleted(id: condition.id));
                        },
                      ),
                      ReorderableDragStartListener(
                        index: index,
                        child: const Icon(Icons.drag_handle),
                      ),
                    ],
                  ),
                ),
              );
            },
            padding: const EdgeInsets.all(
              QueryWizardConstants.defaultEdgeInsetsAllValue,
            ),
            onReorder: (int oldIndex, int newIndex) {
              bloc.add(
                QueryConditionOrderChanged(
                  oldIndex: oldIndex,
                  newIndex: newIndex,
                ),
              );
            },
            buildDefaultDragHandles: false,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _navigateToQueryConditionPage(context: context),
            tooltip: localizations.add,
            child: const Icon(Icons.add),
          ),
        );
      }

      return const Center(child: CircularProgressIndicator());
    });
  }
}

class _QueryConditionPage extends HookWidget {
  _QueryConditionPage({this.id, required this.tables});

  final String? id;
  final List<QueryElement> tables;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryConditionsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;
    final theme = Theme.of(context);
    final fields = tables.expand((t) => t.elements).toList();

    final pageInitialized = useState<bool>(false);
    final isCustom = useState<bool?>(false);
    final leftField = useState<QueryElement?>(null);
    final logicalCompareType = useState<LogicalCompareType?>(
      LogicalCompareType.equal,
    );
    final rightFieldController = useTextEditingController();
    final customConditionController = useTextEditingController();

    if (id != null && !pageInitialized.value) {
      final condition = bloc.state.conditions.findById(id!);

      isCustom.value = condition.isCustom;
      leftField.value = fields.firstWhere(
        (f) => f == condition.leftField,
      );

      logicalCompareType.value = condition.logicalCompareType;
      rightFieldController.text =
          condition.rightField!.alias ?? condition.rightField!.name;
      customConditionController.text = condition.customCondition;

      pageInitialized.value = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.condition),
        actions: [
          TextButton(
            onPressed: () {
              final condition = QueryCondition(
                  id: id == null ? const Uuid().v1() : id!,
                  isCustom: isCustom.value ?? false,
                  leftField: leftField.value,
                  logicalCompareType:
                      logicalCompareType.value ?? LogicalCompareType.equal,
                  rightField: QueryElement(
                    id: const Uuid().v1(),
                    name: rightFieldController.text,
                    type: QueryElementType.column,
                    elements: List<QueryElement>.empty(),
                  ),
                  customCondition: customConditionController.text);

              if (id == null) {
                bloc.add(QueryConditionAdded(condition: condition));
              } else {
                bloc.add(QueryConditionUpdated(condition: condition));
              }

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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                    value: isCustom.value,
                    onChanged: (value) {
                      isCustom.value = value;
                      if (value ?? false) {
                        if (leftField.value == null ||
                            rightFieldController.text == '') {
                          customConditionController.text = '';
                          return;
                        }

                        customConditionController.text =
                            '${leftField.value?.name ?? ''} '
                            '${logicalCompareType.value ?? ''} '
                            '${rightFieldController.text}';
                      }
                    },
                    title: Text(localizations.custom),
                  ),
                  Visibility(
                    visible: isCustom.value ?? false,
                    child: TextFormField(
                      controller: customConditionController,
                      decoration: InputDecoration(
                        labelText: localizations.customCondition,
                        icon: const Icon(Icons.text_fields_rounded),
                      ),
                      keyboardType: TextInputType.multiline,
                      autofocus: true,
                    ),
                  ),
                  Visibility(
                    visible: !(isCustom.value ?? false),
                    child: DropdownButtonFormField<QueryElement>(
                      value: leftField.value,
                      items: fields.map<DropdownMenuItem<QueryElement>>(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: value.parent?.alias ??
                                        value.parent?.name,
                                    style: const TextStyle(
                                      color: SqlColorScheme.table,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '.',
                                    style: TextStyle(
                                      color: SqlColorScheme.dot,
                                    ),
                                  ),
                                  TextSpan(
                                    text: value.name,
                                    style: const TextStyle(
                                      color: SqlColorScheme.column,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (value) {
                        leftField.value = value;
                        rightFieldController.text = value?.name ?? '';
                      },
                      decoration: InputDecoration(
                        labelText: localizations.leftField,
                        icon: const Icon(Icons.horizontal_rule_rounded),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !(isCustom.value ?? false),
                    child: DropdownButtonFormField<LogicalCompareType>(
                      value: logicalCompareType.value,
                      items: QueryWizardConstants.logicalCompareTypes
                          .map<DropdownMenuItem<LogicalCompareType>>(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value.stringValue,
                              style: const TextStyle(color: SqlColorScheme.dot),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (value) => logicalCompareType.value = value,
                      decoration: InputDecoration(
                        labelText: localizations.condition,
                        icon: const Icon(Icons.compare_arrows),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !(isCustom.value ?? false),
                    child: TextFormField(
                      controller: rightFieldController,
                      decoration: InputDecoration(
                        labelText: localizations.rightField,
                        icon: const Icon(Icons.horizontal_rule_rounded),
                      ),
                      keyboardType: TextInputType.multiline,
                      autofocus: true,
                      style: const TextStyle(color: SqlColorScheme.parameter),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
