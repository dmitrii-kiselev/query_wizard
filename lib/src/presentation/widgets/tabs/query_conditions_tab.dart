import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/src/application/blocs/query_conditions/query_conditions_bloc.dart';

class QueryConditionsTab extends StatelessWidget {
  const QueryConditionsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryConditionsBloc>(context);
    final tables = BlocProvider.of<QueryTablesBloc>(context).state.tables;
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryConditionsBloc, QueryConditionsState>(
      builder: (
        context,
        state,
      ) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.conditions.length,
            itemBuilder: (context, index) {
              final condition = state.conditions[index];

              return Card(
                key: ValueKey('$index'),
                child: ListTile(
                    leading: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.copy_outlined),
                          tooltip: localizations?.copy ?? 'Copy',
                          onPressed: () {
                            bloc.add(
                              QueryConditionsEvent.conditionCopied(
                                condition: condition,
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations?.remove ?? 'Remove',
                          onPressed: () {
                            bloc.add(
                              QueryConditionsEvent.conditionDeleted(
                                index: index,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => _QueryConditionPage(
                              index: index, bloc: bloc, tables: tables),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    title: Text(condition.toString())),
              );
            },
            padding: const EdgeInsets.all(
                QueryWizardConstants.defaultEdgeInsetsAllValue),
            onReorder: (int oldIndex, int newIndex) {
              bloc.add(
                QueryConditionsEvent.conditionOrderChanged(
                  oldIndex: oldIndex,
                  newIndex: newIndex,
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) =>
                      _QueryConditionPage(bloc: bloc, tables: tables),
                  fullscreenDialog: true,
                ),
              );
            },
            tooltip: localizations?.add ?? 'Add',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

class _QueryConditionPage extends HookWidget {
  _QueryConditionPage({this.index, required this.bloc, required this.tables});

  final int? index;
  final QueryConditionsBloc bloc;
  final List<QueryElement> tables;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    final theme = Theme.of(context);
    final fields = tables.expand((t) => t.elements).toList();

    final pageInitialized = useState<bool>(false);
    final isCustom = useState<bool?>(false);
    final leftField = useState<QueryElement?>(null);
    final logicalCompareType = useState<String?>('=');
    final rightFieldController = useTextEditingController();
    final customConditionController = useTextEditingController();

    if (index != null && !pageInitialized.value) {
      final condition = bloc.state.conditions.elementAt(index!);

      isCustom.value = condition.isCustom;
      leftField.value = fields.firstWhere(
        (f) =>
            '${f.parent?.alias ?? f.parent?.name}.${f.name}' ==
            condition.leftField,
      );

      logicalCompareType.value = condition.logicalCompareType;
      rightFieldController.text = condition.rightField;
      customConditionController.text = condition.customCondition;

      pageInitialized.value = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations?.condition ?? 'Condition'),
        actions: [
          TextButton(
            onPressed: () {
              final condition = QueryCondition(
                isCustom: isCustom.value ?? false,
                leftField:
                    '${leftField.value?.parent?.alias ?? leftField.value?.parent?.name}.'
                    '${leftField.value?.name ?? ''}',
                logicalCompareType: logicalCompareType.value ?? '',
                rightField: rightFieldController.text,
                customCondition: customConditionController.text,
              );

              if (index == null) {
                bloc.add(
                  QueryConditionsEvent.conditionAdded(
                    condition: condition,
                  ),
                );
              } else {
                bloc.add(
                  QueryConditionsEvent.conditionUpdated(
                    index: index!,
                    condition: condition,
                  ),
                );
              }

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
                    title: Text(localizations?.custom ?? 'Custom'),
                  ),
                  Visibility(
                    visible: isCustom.value ?? false,
                    child: TextFormField(
                      controller: customConditionController,
                      decoration: InputDecoration(
                        labelText: localizations?.customCondition ??
                            'Custom condition',
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
                            child: Text(
                              '${value.parent?.alias ?? value.parent?.name}.'
                              '${value.name}',
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (value) {
                        leftField.value = value;
                        rightFieldController.text = value?.name ?? '';
                      },
                      decoration: InputDecoration(
                        labelText: localizations?.leftField ?? 'Left field',
                        icon: const Icon(Icons.horizontal_rule_rounded),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !(isCustom.value ?? false),
                    child: DropdownButtonFormField<String>(
                      value: logicalCompareType.value,
                      items: QueryWizardConstants.logicalCompareTypes
                          .map<DropdownMenuItem<String>>(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      onChanged: (value) => logicalCompareType.value = value,
                      decoration: InputDecoration(
                        labelText: localizations?.condition ?? 'Condition',
                        icon: const Icon(Icons.compare_arrows),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !(isCustom.value ?? false),
                    child: TextFormField(
                      controller: rightFieldController,
                      decoration: InputDecoration(
                        labelText: localizations?.rightField ?? 'Right field',
                        icon: const Icon(Icons.horizontal_rule_rounded),
                      ),
                      keyboardType: TextInputType.multiline,
                      autofocus: true,
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
