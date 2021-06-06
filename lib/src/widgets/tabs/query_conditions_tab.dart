import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryConditionsTab extends StatelessWidget {
  const QueryConditionsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryConditionsBloc>(context);
    final tables = BlocProvider.of<QueryTablesBloc>(context).state.tables;
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryConditionsBloc, QueryConditionsState>(
        builder: (context, state) {
      if (state is QueryConditionsChanged) {
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
                          tooltip: 'Copy',
                          onPressed: () {
                            final event =
                                QueryConditionCopied(condition: condition);
                            bloc.add(event);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: 'Remove',
                          onPressed: () {
                            final event = QueryConditionDeleted(index: index);
                            bloc.add(event);
                          },
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => _ConditionPage(
                                index: index, bloc: bloc, tables: tables),
                            fullscreenDialog: true,
                          ));
                    },
                    title: Text(condition.toString())),
              );
            },
            padding: const EdgeInsets.all(8),
            onReorder: (int oldIndex, int newIndex) {
              final event = QueryConditionOrderChanged(
                  oldIndex: oldIndex, newIndex: newIndex);
              bloc.add(event);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) =>
                        _ConditionPage(bloc: bloc, tables: tables),
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
class _ConditionPage extends HookWidget {
  _ConditionPage({this.index, required this.bloc, required this.tables});

  final int? index;
  final QueryConditionsBloc bloc;
  final List<DbElement> tables;
  final List<String> logicalCompareTypes = ['=', '<>', '<', '>', '<=', '>='];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    final theme = Theme.of(context);
    final fields = tables.expand((t) => t.elements).toList();

    final customConditionController = useTextEditingController();
    final isCustom = useState<bool?>(false);
    final leftField = useState<DbElement?>(null);
    final logicalCompareType = useState<String?>('=');
    final rightFieldController = useTextEditingController();
    final pageInitialized = useState<bool>(false);

    if (index != null && !pageInitialized.value) {
      final condition = bloc.state.conditions.elementAt(index!);

      isCustom.value = condition.isCustom;
      leftField.value = fields.firstWhere((f) =>
          '${f.parent?.alias ?? f.parent?.name}.${f.name}' ==
          condition.leftField);
      logicalCompareType.value = condition.logicalCompareType;

      rightFieldController.text = condition.rightField;
      customConditionController.text = condition.customCondition;

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
          items: fields.map<DropdownMenuItem<DbElement>>(
            (value) {
              return DropdownMenuItem(
                child: Text(
                    '${value.parent?.alias ?? value.parent?.name}.${value.name}'),
                value: value,
              );
            },
          ).toList(),
          onChanged: (value) {
            leftField.value = value;
            rightFieldController.text = value?.name ?? '';
          },
          decoration: InputDecoration(
            labelText: 'Left field',
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
            labelText: 'Condition',
            icon: Icon(Icons.compare_arrows),
          ),
        ),
        TextFormField(
          controller: rightFieldController,
          decoration: InputDecoration(
              labelText: 'Right field',
              icon: Icon(Icons.horizontal_rule_rounded)),
          scrollPadding: EdgeInsets.all(20.0),
          keyboardType: TextInputType.multiline,
          autofocus: true,
        ),
      ];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations?.condition ?? 'Condition'),
        actions: [
          TextButton(
            onPressed: () {
              QueryConditionsEvent event;

              final condition = QueryCondition(
                  isCustom: isCustom.value ?? false,
                  leftField:
                      '${leftField.value?.parent?.alias ?? leftField.value?.parent?.name}.${leftField.value?.name ?? ''}',
                  logicalCompareType: logicalCompareType.value ?? '',
                  rightField: rightFieldController.text,
                  customCondition: customConditionController.text);

              if (this.index == null) {
                event = QueryConditionAdded(condition: condition);
              } else {
                event = QueryConditionUpdated(
                    index: this.index!, condition: condition);
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
                            (leftField.value?.name ?? '') +
                                ' ' +
                                (logicalCompareType.value ?? '') +
                                ' ' +
                                rightFieldController.text;
                      }
                    },
                    title: Text(localizations?.custom ?? 'Custom'),
                  ),
                  ...actions
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
