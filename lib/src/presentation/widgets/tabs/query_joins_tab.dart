import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

class QueryJoinsTab extends StatelessWidget {
  const QueryJoinsTab({Key? key}) : super(key: key);

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
                    leading: Wrap(
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
                      ],
                    ),
                    onTap: () => _navigateToQueryJoinPage(
                      id: join.id,
                      context: context,
                    ),
                    title: Text(join.toString()),
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
        (t) => (t.alias ?? t.name) == join.leftTable,
      );

      rightTable.value = tables.firstWhere(
        (t) => (t.alias ?? t.name) == join.rightTable,
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
          (f) => f.name == join.condition.leftField,
        );
        logicalCompareType.value = join.condition.logicalCompareType;
        rightField.value = rightTable.value?.elements.firstWhere(
          (f) => f.name == join.condition.rightField,
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

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.join),
        actions: [
          TextButton(
            onPressed: () {
              final condition = QueryCondition(
                id: const Uuid().v1(),
                isCustom: isCustom.value ?? false,
                leftField: leftField.value?.name ?? '',
                logicalCompareType:
                    logicalCompareType.value ?? LogicalCompareType.equal,
                rightField: rightField.value?.name ?? '',
                customCondition: customConditionController.text,
              );
              final join = QueryJoin(
                id: id == null ? const Uuid().v1() : id!,
                leftTable:
                    leftTable.value?.alias ?? leftTable.value?.name ?? '',
                isLeftAll: isLeftAll.value ?? false,
                rightTable:
                    rightTable.value?.alias ?? rightTable.value?.name ?? '',
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
                          child: Text(value.alias ?? value.name),
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
                  ),
                  DropdownButtonFormField<QueryElement>(
                    value: rightTable.value,
                    items: tables
                        .where((t) => t != leftTable.value)
                        .map<DropdownMenuItem<QueryElement>>(
                      (value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value.alias ?? value.name),
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
                      items: leftTable.value?.elements
                          .map<DropdownMenuItem<QueryElement>>(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value.name),
                          );
                        },
                      ).toList(),
                      onChanged: (value) => leftField.value = value,
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
                            child: Text(value.stringValue),
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
                    child: DropdownButtonFormField<QueryElement>(
                      value: rightField.value,
                      items: rightTable.value?.elements
                          .map<DropdownMenuItem<QueryElement>>(
                        (value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value.name),
                          );
                        },
                      ).toList(),
                      onChanged: (value) => rightField.value = value,
                      decoration: InputDecoration(
                        labelText: localizations.rightField,
                        icon: const Icon(Icons.horizontal_rule_rounded),
                      ),
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
