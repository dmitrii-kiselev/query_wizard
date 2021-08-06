import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:query_wizard/presentation.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

class QueryJoinsTab extends StatelessWidget {
  const QueryJoinsTab({Key? key}) : super(key: key);

  Widget _buildTitle(QueryJoin join) {
    final leftTableName = join.leftTable?.alias ?? join.leftTable?.name;
    final rightTableName = join.leftTable?.alias ?? join.leftTable?.name;
    final condition = join.condition.isCustom
        ? [
            TextSpan(
              text: join.condition.customCondition,
              style: const TextStyle(color: SqlColorScheme.column),
            ),
          ]
        : [
            TextSpan(
              text: leftTableName,
              style: const TextStyle(color: SqlColorScheme.table),
            ),
            const TextSpan(
              text: '.',
              style: TextStyle(color: SqlColorScheme.dot),
            ),
            TextSpan(
              text: join.condition.leftField!.name,
              style: const TextStyle(color: SqlColorScheme.column),
            ),
            const TextSpan(text: ' '),
            TextSpan(
              text: join.condition.logicalCompareType.stringValue,
              style: const TextStyle(color: SqlColorScheme.dot),
            ),
            const TextSpan(text: ' '),
            TextSpan(
              text: rightTableName,
              style: const TextStyle(color: SqlColorScheme.table),
            ),
            const TextSpan(
              text: '.',
              style: TextStyle(color: SqlColorScheme.dot),
            ),
            TextSpan(
              text: join.condition.rightField!.name,
              style: const TextStyle(color: SqlColorScheme.column),
            ),
          ];

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: join.getJoin(),
            style: const TextStyle(color: SqlColorScheme.keyword),
          ),
          const TextSpan(text: ' '),
          const TextSpan(
            text: 'JOIN',
            style: TextStyle(color: SqlColorScheme.keyword),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: leftTableName,
            style: const TextStyle(color: SqlColorScheme.table),
          ),
          const TextSpan(text: '\n'),
          const TextSpan(
            text: 'ON',
            style: TextStyle(color: SqlColorScheme.keyword),
          ),
          const TextSpan(text: ' '),
          ...condition,
        ],
      ),
    );
  }

  void _navigateToQueryJoinPage({String? id, required BuildContext context}) {
    final joinsBloc = BlocProvider.of<QueryJoinsBloc>(context);
    final tables = BlocProvider.of<QueryTablesBloc>(context).state.tables;

    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => BlocProvider.value(
          value: joinsBloc,
          child: _QueryJoinPage(id: id, tables: tables),
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryJoinsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    return BlocBuilder<QueryJoinsBloc, QueryJoinsState>(
      builder: (
        context,
        state,
      ) {
        if (state is QueryJoinsChanged) {
          return Scaffold(
            body: ReorderableListView.builder(
              itemCount: state.joins.length,
              itemBuilder: (context, index) {
                final join = state.joins[index];

                return Card(
                  key: ValueKey('$index'),
                  child: ListTile(
                    leading: const Icon(Icons.account_tree_rounded),
                    onTap: () => _navigateToQueryJoinPage(
                      id: join.id,
                      context: context,
                    ),
                    title: _buildTitle(join),
                    trailing: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.copy_outlined),
                          tooltip: localizations.copy,
                          onPressed: () {
                            bloc.add(QueryJoinCopied(id: join.id));
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations.remove,
                          onPressed: () {
                            bloc.add(QueryJoinDeleted(id: join.id));
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
                  QueryJoinOrderChanged(
                    oldIndex: oldIndex,
                    newIndex: newIndex,
                  ),
                );
              },
              buildDefaultDragHandles: false,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _navigateToQueryJoinPage(context: context),
              tooltip: localizations.add,
              child: const Icon(Icons.add),
            ),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class _QueryJoinPage extends HookWidget {
  _QueryJoinPage({
    this.id,
    required this.tables,
  });

  final String? id;
  final List<QueryElement> tables;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryJoinsBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;
    final theme = Theme.of(context);

    final leftTable = useState<QueryElement?>(null);
    final isLeftAll = useState<bool?>(false);
    final rightTable = useState<QueryElement?>(null);
    final isRightAll = useState<bool?>(false);
    final isCustom = useState<bool?>(false);
    final leftField = useState<QueryElement?>(null);
    final logicalCompareType = useState<LogicalCompareType?>(
      LogicalCompareType.equal,
    );
    final rightField = useState<QueryElement?>(null);
    final customConditionController = useTextEditingController();
    final pageInitialized = useState<bool>(false);

    if (id != null && !pageInitialized.value) {
      final join = bloc.state.joins.findById(id!);

      leftTable.value = tables.firstWhere(
        (t) =>
            (t.alias ?? t.name) ==
            (join.leftTable!.alias ?? join.leftTable!.name),
      );

      rightTable.value = tables.firstWhere(
        (t) =>
            (t.alias ?? t.name) ==
            (join.rightTable!.alias ?? join.rightTable!.name),
      );

      isLeftAll.value = join.isLeftAll;
      isRightAll.value = join.isRightAll;
      isCustom.value = join.condition.isCustom;

      if (join.condition.isCustom) {
        customConditionController.text = join.condition.customCondition;
        leftField.value = null;
        logicalCompareType.value = LogicalCompareType.equal;
        rightField.value = null;
      } else {
        leftField.value = leftTable.value?.elements.firstWhere(
          (f) => f == join.condition.leftField,
        );
        logicalCompareType.value = join.condition.logicalCompareType;
        rightField.value = rightTable.value?.elements.firstWhere(
          (f) => f == join.condition.rightField,
        );
      }

      pageInitialized.value = true;
    }

    String _buildCustomCondition() {
      return '${leftTable.value?.alias ?? leftTable.value?.name ?? ''}.'
          '${leftField.value?.name ?? ''} '
          '${logicalCompareType.value ?? ''} '
          '${rightTable.value?.alias ?? rightTable.value?.name ?? ''}.'
          '${rightField.value?.name ?? ''}';
    }

    final isCustomCondition = isCustom.value ?? false;

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.join),
        actions: [
          TextButton(
            onPressed: () {
              if (!_formKey.currentState!.validate()) {
                return;
              }

              final condition = QueryCondition(
                id: const Uuid().v1(),
                isCustom: isCustomCondition,
                leftField: leftField.value,
                logicalCompareType:
                    logicalCompareType.value ?? LogicalCompareType.equal,
                rightField: rightField.value,
                customCondition: customConditionController.text,
              );
              final join = QueryJoin(
                id: id == null ? const Uuid().v1() : id!,
                leftTable: leftTable.value ?? leftTable.value,
                isLeftAll: isLeftAll.value ?? false,
                rightTable: rightTable.value ?? rightTable.value,
                isRightAll: isRightAll.value ?? false,
                condition: condition,
              );

              if (id == null) {
                bloc.add(QueryJoinAdded(join: join));
              } else {
                bloc.add(QueryJoinUpdated(join: join));
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
                  DropdownButtonFormField<QueryElement>(
                    value: leftTable.value,
                    items: tables
                        .where((t) => t != rightTable.value)
                        .map<DropdownMenuItem<QueryElement>>(
                      (value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value.alias ?? value.name,
                            style: const TextStyle(
                              color: SqlColorScheme.table,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      leftTable.value = value;
                      leftField.value = null;
                    },
                    decoration: InputDecoration(
                      labelText: localizations.leftTable,
                      icon: const Icon(Icons.table_rows_rounded),
                    ),
                    validator: (value) {
                      if (value == null) {
                        return localizations.pleaseSelectLeftTable;
                      }
                      return null;
                    },
                  ),
                  DropdownButtonFormField<QueryElement>(
                    value: rightTable.value,
                    items: tables
                        .where((t) => t != leftTable.value)
                        .map<DropdownMenuItem<QueryElement>>(
                      (value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value.alias ?? value.name,
                            style: const TextStyle(
                              color: SqlColorScheme.table,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      rightTable.value = value;
                      rightField.value = null;
                    },
                    decoration: InputDecoration(
                      labelText: localizations.rightTable,
                      icon: const Icon(Icons.table_rows_rounded),
                    ),
                    validator: (value) {
                      if (value == null) {
                        return localizations.pleaseSelectRightTable;
                      }
                      return null;
                    },
                  ),
                  CheckboxListTile(
                    value: isLeftAll.value,
                    onChanged: (value) => isLeftAll.value = value,
                    title: Text(localizations.leftAll),
                  ),
                  CheckboxListTile(
                    value: isRightAll.value,
                    onChanged: (value) => isRightAll.value = value,
                    title: Text(localizations.rightAll),
                  ),
                  CheckboxListTile(
                    value: isCustom.value,
                    onChanged: (value) {
                      isCustom.value = value;
                      if (value ?? false) {
                        if (leftField.value == null ||
                            rightField.value == null) {
                          customConditionController.text = '';
                          return;
                        }

                        customConditionController.text =
                            _buildCustomCondition();
                      }
                    },
                    title: Text(localizations.custom),
                  ),
                  Visibility(
                    visible: isCustomCondition,
                    child: TextFormField(
                      controller: customConditionController,
                      decoration: InputDecoration(
                        labelText: localizations.customCondition,
                        icon: const Icon(Icons.text_fields_rounded),
                      ),
                      keyboardType: TextInputType.multiline,
                      autofocus: true,
                      validator: (value) {
                        if (isCustomCondition && value == '') {
                          return localizations.pleaseEnterCustomCondition;
                        }
                        return null;
                      },
                    ),
                  ),
                  Visibility(
                    visible: !isCustomCondition,
                    child: DropdownButtonFormField<QueryElement>(
                      value: leftField.value,
                      items: leftTable.value?.elements
                          .map<DropdownMenuItem<QueryElement>>(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value.name,
                              style: const TextStyle(
                                color: SqlColorScheme.column,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (value) => leftField.value = value,
                      decoration: InputDecoration(
                        labelText: localizations.leftField,
                        icon: const Icon(Icons.horizontal_rule_rounded),
                      ),
                      validator: (value) {
                        if (!isCustomCondition && value == null) {
                          return localizations.pleaseSelectLeftField;
                        }
                        return null;
                      },
                    ),
                  ),
                  Visibility(
                    visible: !isCustomCondition,
                    child: DropdownButtonFormField<LogicalCompareType>(
                      value: logicalCompareType.value,
                      items: QueryWizardConstants.logicalCompareTypes
                          .map<DropdownMenuItem<LogicalCompareType>>(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value.stringValue),
                          );
                        },
                      ).toList(),
                      onChanged: (value) => logicalCompareType.value = value,
                      decoration: InputDecoration(
                        labelText: localizations.condition,
                        icon: const Icon(Icons.compare_arrows),
                      ),
                      validator: (value) {
                        if (!isCustomCondition && value == null) {
                          return localizations.pleaseSelectLogicalCompareType;
                        }
                        return null;
                      },
                    ),
                  ),
                  Visibility(
                    visible: !isCustomCondition,
                    child: DropdownButtonFormField<QueryElement>(
                      value: rightField.value,
                      items: rightTable.value?.elements
                          .map<DropdownMenuItem<QueryElement>>(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value.name,
                              style: const TextStyle(
                                color: SqlColorScheme.column,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (value) => rightField.value = value,
                      decoration: InputDecoration(
                        labelText: localizations.rightField,
                        icon: const Icon(Icons.horizontal_rule_rounded),
                      ),
                      validator: (value) {
                        if (!isCustomCondition && value == null) {
                          return localizations.pleaseSelectRightField;
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
