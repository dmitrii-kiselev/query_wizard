import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryJoinsTab extends StatelessWidget {
  const QueryJoinsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryJoinsTabBloc>(context);
    final tables = BlocProvider.of<QueryTablesBloc>(context).state.tables;
    final fields = BlocProvider.of<QueryFieldsBloc>(context).state.fields;
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryJoinsTabBloc, QueryJoinsTabState>(
        builder: (context, state) {
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
                          tooltip: localizations?.copy ?? 'Copy',
                          onPressed: () {
                            final event = QueryJoinCopied(join: join);
                            bloc.add(event);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations?.remove ?? 'Remove',
                          onPressed: () {
                            final event = QueryJoinRemoved(index: index);
                            bloc.add(event);
                          },
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => _JoinPage(
                                index: index,
                                bloc: bloc,
                                tables: tables,
                                fields: fields),
                            fullscreenDialog: true,
                          ));
                    },
                    title: Text(join.toString())),
              );
            },
            padding: const EdgeInsets.all(8),
            onReorder: (int oldIndex, int newIndex) {
              final event =
                  QueryJoinOrderChanged(oldIndex: oldIndex, newIndex: newIndex);
              bloc.add(event);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) =>
                        _JoinPage(bloc: bloc, tables: tables, fields: fields),
                    fullscreenDialog: true,
                  ));
            },
            child: const Icon(Icons.add),
            tooltip: localizations?.add ?? 'Add',
          ),
        );
      }

      return Center(child: CircularProgressIndicator());
    });
  }
}

// ignore: must_be_immutable
class _JoinPage extends HookWidget {
  _JoinPage(
      {this.index,
      required this.bloc,
      required this.tables,
      required this.fields});

  final int? index;
  final QueryJoinsTabBloc bloc;
  final List<DbElement> tables;
  final List<DbElement> fields;
  final List<String> logicalCompareTypes = ['=', '<>', '<', '>', '<=', '>='];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    final theme = Theme.of(context);

    final customConditionController = useTextEditingController();
    final leftTable = useState<DbElement?>(null);
    final isLeftAll = useState<bool?>(false);
    final rightTable = useState<DbElement?>(null);
    final isRightAll = useState<bool?>(false);
    final isCustom = useState<bool?>(false);
    final leftField = useState<DbElement?>(null);
    final logicalCompareType = useState<String?>('=');
    final rightField = useState<DbElement?>(null);
    final pageInitialized = useState<bool>(false);

    if (index != null && !pageInitialized.value) {
      final join = bloc.state.joins.elementAt(index!);

      leftTable.value =
          tables.firstWhere((t) => (t.alias ?? t.name) == join.leftTable);
      isLeftAll.value = join.isLeftAll;
      rightTable.value =
          tables.firstWhere((t) => (t.alias ?? t.name) == join.rightTable);
      isRightAll.value = join.isRightAll;
      isCustom.value = join.condition.isCustom;
      leftField.value = leftTable.value?.elements
          .firstWhere((f) => f.name == join.condition.leftField);
      logicalCompareType.value = join.condition.logicalCompareType;
      rightField.value = rightTable.value?.elements
          .firstWhere((f) => f.name == join.condition.rightField);
      customConditionController.text = join.condition.customCondition;

      pageInitialized.value = true;
    }

    var actions;

    if (isCustom.value ?? false) {
      actions = [
        TextFormField(
          controller: customConditionController,
          decoration: InputDecoration(
            labelText: localizations?.customCondition ?? 'Custom condition',
            icon: Icon(Icons.text_fields_rounded),
          ),
          scrollPadding: EdgeInsets.all(20.0),
          keyboardType: TextInputType.multiline,
          autofocus: true,
        ),
      ];
    } else {
      actions = [
        DropdownButtonFormField<DbElement>(
          value: leftField.value,
          items: leftTable.value?.elements.map<DropdownMenuItem<DbElement>>(
            (value) {
              return DropdownMenuItem(
                child: Text(value.name),
                value: value,
              );
            },
          ).toList(),
          onChanged: (value) => leftField.value = value,
          decoration: InputDecoration(
            labelText: localizations?.leftField ?? 'Left field',
            icon: Icon(Icons.horizontal_rule_rounded),
          ),
        ),
        DropdownButtonFormField<String>(
          value: logicalCompareType.value,
          items: logicalCompareTypes.map<DropdownMenuItem<String>>(
            (value) {
              return DropdownMenuItem(
                child: Text(value),
                value: value,
              );
            },
          ).toList(),
          onChanged: (value) => logicalCompareType.value = value,
          decoration: InputDecoration(
            labelText: localizations?.condition ?? 'Condition',
            icon: Icon(Icons.compare_arrows),
          ),
        ),
        DropdownButtonFormField<DbElement>(
          value: rightField.value,
          items: rightTable.value?.elements.map<DropdownMenuItem<DbElement>>(
            (value) {
              return DropdownMenuItem(
                child: Text(value.name),
                value: value,
              );
            },
          ).toList(),
          onChanged: (value) => rightField.value = value,
          decoration: InputDecoration(
            labelText: localizations?.rightField ?? 'Right field',
            icon: Icon(Icons.horizontal_rule_rounded),
          ),
        )
      ];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations?.join ?? 'Join'),
        actions: [
          TextButton(
            onPressed: () {
              QueryJoinsTabEvent event;

              final condition = QueryCondition(
                  isCustom: isCustom.value ?? false,
                  leftField: leftField.value?.name ?? '',
                  logicalCompareType: logicalCompareType.value ?? '',
                  rightField: rightField.value?.name ?? '',
                  customCondition: customConditionController.text);
              final join = QueryJoin(
                  leftTable:
                      leftTable.value?.alias ?? leftTable.value?.name ?? '',
                  isLeftAll: isLeftAll.value ?? false,
                  rightTable:
                      rightTable.value?.alias ?? rightTable.value?.name ?? '',
                  isRightAll: isRightAll.value ?? false,
                  condition: condition);

              if (this.index == null) {
                event = QueryJoinAdded(join: join);
              } else {
                event = QueryJoinEdited(index: this.index!, join: join);
              }

              bloc.add(event);
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
                  DropdownButtonFormField<DbElement>(
                    value: leftTable.value,
                    items: tables
                        .where((t) => t != rightTable.value)
                        .map<DropdownMenuItem<DbElement>>(
                      (value) {
                        return DropdownMenuItem(
                          child: Text(value.alias ?? value.name),
                          value: value,
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      leftTable.value = value;
                      leftField.value = null;
                    },
                    decoration: InputDecoration(
                      labelText: localizations?.leftTable ?? 'Left table',
                      icon: Icon(Icons.table_rows_rounded),
                    ),
                  ),
                  DropdownButtonFormField<DbElement>(
                    value: rightTable.value,
                    items: tables
                        .where((t) => t != leftTable.value)
                        .map<DropdownMenuItem<DbElement>>(
                      (value) {
                        return DropdownMenuItem(
                          child: Text(value.alias ?? value.name),
                          value: value,
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      rightTable.value = value;
                      rightField.value = null;
                    },
                    decoration: InputDecoration(
                      labelText: localizations?.rightTable ?? 'Right table',
                      icon: Icon(Icons.table_rows_rounded),
                    ),
                  ),
                  CheckboxListTile(
                    value: isLeftAll.value,
                    onChanged: (value) => isLeftAll.value = value,
                    title: Text(localizations?.leftAll ?? 'Left all'),
                  ),
                  CheckboxListTile(
                    value: isRightAll.value,
                    onChanged: (value) => isRightAll.value = value,
                    title: Text(localizations?.rightAll ?? 'Right all'),
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
                            (leftTable.value?.alias ??
                                    leftTable.value?.name ??
                                    '') +
                                '.' +
                                (leftField.value?.name ?? '') +
                                ' ' +
                                (logicalCompareType.value ?? '') +
                                ' ' +
                                (rightTable.value?.alias ??
                                    rightTable.value?.name ??
                                    '') +
                                '.' +
                                (rightField.value?.name ?? '');
                      }
                    },
                    title: Text(localizations?.custom ?? 'Custom'),
                  ),
                  ...actions,
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
