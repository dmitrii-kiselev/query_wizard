import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:query_wizard/blocs.dart';

class QueryConditionsTab extends StatelessWidget {
  const QueryConditionsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryConditionsTabBloc>(context);
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<QueryConditionsTabBloc, QueryConditionsTabState>(
        builder: (context, state) {
      if (state is QueryConditionsChanged) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.conditions.length,
            itemBuilder: (context, index) {
              final condition = state.conditions[index];
              return OpenContainer<bool>(
                key: ValueKey('$index'),
                transitionType: ContainerTransitionType.fade,
                openBuilder: (context, openContainer) => _ConditionForm(),
                tappable: false,
                closedShape: const RoundedRectangleBorder(),
                closedElevation: 0,
                closedBuilder: (context, openContainer) {
                  return Card(
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
                                final event =
                                    QueryConditionRemoved(index: index);
                                bloc.add(event);
                              },
                            ),
                          ],
                        ),
                        onTap: openContainer,
                        title: Text(condition.toString())),
                  );
                },
              );
            },
            padding: const EdgeInsets.all(8),
            onReorder: (int oldIndex, int newIndex) {
              final event = QueryConditionOrderChanged(
                  oldIndex: oldIndex, newIndex: newIndex);
              bloc.add(event);
            },
          ),
          floatingActionButton: OpenContainer(
            transitionType: ContainerTransitionType.fade,
            openBuilder: (context, openContainer) => _ConditionForm(),
            closedElevation: 6,
            closedShape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(56 / 2),
              ),
            ),
            closedColor: colorScheme.secondary,
            closedBuilder: (context, openContainer) {
              return SizedBox(
                height: 56,
                width: 56,
                child: Center(
                  child: Icon(Icons.add, color: colorScheme.onSecondary),
                ),
              );
            },
          ),
        );
      }

      return Center(child: CircularProgressIndicator());
    });
  }
}

// ignore: must_be_immutable
class _ConditionForm extends HookWidget {
  _ConditionForm();

  final List<String> logicalCompareTypes = [
    '=',
    '<>',
    '>',
  ];
  final List<String> fields = [
    'Table1.Field1',
    'Table1.Field2',
    'Table1.Field3',
    'Table2.Field1',
    'Table2.Field2',
    'Table2.Field3',
    'Table3.Field1',
    'Table3.Field2',
    'Table3.Field3',
  ];

  bool? isCustom;
  String? leftField;
  String? logicalCompareType;
  String? rightField;
  String? customCondition;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isCustom = useState<bool?>(false);
    final leftField = useState<String?>(null);
    final logicalCompareType = useState<String?>(null);
    final rightField = useState<String?>(null);
    final customCondition = useState<String?>(null);

    return Scaffold(
      appBar: AppBar(
        title: Text('Join'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Save',
              style: theme.textTheme.bodyText2!.copyWith(
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
                    onChanged: (value) => isCustom.value = value,
                    title: Text('Custom'),
                  ),
                  DropdownButtonFormField<String>(
                    onSaved: (value) => {},
                    value: leftField.value,
                    items: fields.map<DropdownMenuItem<String>>(
                      (value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      },
                    ).toList(),
                    onChanged: (value) => leftField.value = value,
                    decoration: InputDecoration(
                      labelText: 'Left field',
                      icon: Icon(Icons.horizontal_rule_rounded),
                    ),
                  ),
                  DropdownButtonFormField<String>(
                    onSaved: (value) => {},
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
                    onSaved: (value) => rightField.value = value,
                    decoration: InputDecoration(
                        labelText: 'Right field',
                        icon: Icon(Icons.horizontal_rule_rounded)),
                  ),
                  TextFormField(
                    onSaved: (value) => customCondition.value = value,
                    decoration: InputDecoration(
                        labelText: 'Custom condition',
                        icon: Icon(Icons.text_fields_rounded)),
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
