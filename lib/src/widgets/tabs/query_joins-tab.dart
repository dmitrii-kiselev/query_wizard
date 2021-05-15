import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryJoinsTab extends StatelessWidget {
  const QueryJoinsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryJoinsTabBloc>(context);
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<QueryJoinsTabBloc, QueryJoinsTabState>(
        builder: (context, state) {
      if (state is QueryJoinsChanged) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.joins.length,
            itemBuilder: (context, index) {
              final join = state.joins[index];
              return OpenContainer<bool>(
                key: ValueKey('$index'),
                transitionType: ContainerTransitionType.fade,
                openBuilder: (context, openContainer) => _JoinForm(),
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
                                final event = QueryJoinCopied(join: join);
                                bloc.add(event);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.highlight_remove_outlined),
                              tooltip: 'Remove',
                              onPressed: () {
                                final event = QueryJoinRemoved(index: index);
                                bloc.add(event);
                              },
                            ),
                          ],
                        ),
                        onTap: openContainer,
                        title: Text(join.toString())),
                  );
                },
              );
            },
            padding: const EdgeInsets.all(8),
            onReorder: (int oldIndex, int newIndex) {
              final event =
                  QueryJoinOrderChanged(oldIndex: oldIndex, newIndex: newIndex);
              bloc.add(event);
            },
          ),
          floatingActionButton: OpenContainer(
            transitionType: ContainerTransitionType.fade,
            openBuilder: (context, openContainer) => _JoinForm(),
            closedElevation: 6,
            closedShape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(56 / 2),
              ),
            ),
            closedColor: colorScheme.primary,
            closedBuilder: (context, openContainer) {
              return SizedBox(
                height: 56,
                width: 56,
                child: Center(
                  child: const Icon(Icons.add),
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
class _JoinForm extends HookWidget {
  _JoinForm();

  final List<DbElement> tables = [
    DbElement(name: 'Table1', nodeType: DbNodeType.table),
    DbElement(name: 'Table2', nodeType: DbNodeType.table),
    DbElement(name: 'Table3', nodeType: DbNodeType.table),
  ];
  final List<String> logicalCompareTypes = [
    '=',
    '<>',
    '>',
  ];
  final List<DbElement> fields = [
    DbElement(name: 'Table1.Field1', nodeType: DbNodeType.column),
    DbElement(name: 'Table1.Field2', nodeType: DbNodeType.column),
    DbElement(name: 'Table1.Field3', nodeType: DbNodeType.column),
    DbElement(name: 'Table2.Field1', nodeType: DbNodeType.column),
    DbElement(name: 'Table2.Field2', nodeType: DbNodeType.column),
    DbElement(name: 'Table2.Field3', nodeType: DbNodeType.column),
    DbElement(name: 'Table3.Field1', nodeType: DbNodeType.column),
    DbElement(name: 'Table3.Field2', nodeType: DbNodeType.column),
    DbElement(name: 'Table3.Field3', nodeType: DbNodeType.column),
  ];

  String? leftTable;
  bool? isLeftAll;
  String? rightTable;
  bool? isRightAll;
  bool? isCustom;
  String? leftField;
  String? logicalCompareType;
  String? rightField;
  String? customCondition;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final leftTable = useState<DbElement?>(null);
    final isLeftAll = useState<bool?>(false);
    final rightTable = useState<DbElement?>(null);
    final isRightAll = useState<bool?>(false);
    final isCustom = useState<bool?>(false);
    final leftField = useState<DbElement?>(null);
    final logicalCompareType = useState<String?>(null);
    final rightField = useState<DbElement?>(null);
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
                  DropdownButtonFormField<DbElement>(
                    onSaved: (value) => {},
                    value: leftTable.value,
                    items: tables.map<DropdownMenuItem<DbElement>>(
                      (value) {
                        return DropdownMenuItem(
                          child: Text(value.name),
                          value: value,
                        );
                      },
                    ).toList(),
                    onChanged: (value) => leftTable.value = value,
                    decoration: InputDecoration(
                      labelText: 'Left table',
                      icon: Icon(Icons.table_rows_rounded),
                    ),
                  ),
                  CheckboxListTile(
                    value: isLeftAll.value,
                    onChanged: (value) => isLeftAll.value = value,
                    title: Text('Left all'),
                  ),
                  DropdownButtonFormField<DbElement>(
                    onSaved: (value) => {},
                    value: rightTable.value,
                    items: tables.map<DropdownMenuItem<DbElement>>(
                      (value) {
                        return DropdownMenuItem(
                          child: Text(value.name),
                          value: value,
                        );
                      },
                    ).toList(),
                    onChanged: (value) => rightTable.value = value,
                    decoration: InputDecoration(
                      labelText: 'Right table',
                      icon: Icon(Icons.table_rows_rounded),
                    ),
                  ),
                  CheckboxListTile(
                    value: isRightAll.value,
                    onChanged: (value) => isRightAll.value = value,
                    title: Text('Right all'),
                  ),
                  CheckboxListTile(
                    value: isCustom.value,
                    onChanged: (value) => isCustom.value = value,
                    title: Text('Custom'),
                  ),
                  DropdownButtonFormField<DbElement>(
                    onSaved: (value) => {},
                    value: leftField.value,
                    items: fields.map<DropdownMenuItem<DbElement>>(
                      (value) {
                        return DropdownMenuItem(
                          child: Text(value.name),
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
                  DropdownButtonFormField<DbElement>(
                    onSaved: (value) => {},
                    value: rightField.value,
                    items: fields.map<DropdownMenuItem<DbElement>>(
                      (value) {
                        return DropdownMenuItem(
                          child: Text(value.name),
                          value: value,
                        );
                      },
                    ).toList(),
                    onChanged: (value) => rightField.value = value,
                    decoration: InputDecoration(
                      labelText: 'Right field',
                      icon: Icon(Icons.horizontal_rule_rounded),
                    ),
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
