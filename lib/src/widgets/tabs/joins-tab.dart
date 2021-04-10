import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/src/models/condition.dart';

class JoinsTab extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<JoinsTabBloc>(context);

    return BlocBuilder<JoinsTabBloc, JoinsTabState>(builder: (context, state) {
      if (state is JoinsChanged) {
        return Scaffold(
          body: ReorderableListView(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            children: <Widget>[
              for (int index = 0; index < state.joins.length; index++)
                ListTile(
                    key: Key('$index'),
                    title: Container(
                        child: _JoinItem(
                            bloc: bloc,
                            index: index,
                            join: state.joins.elementAt(index)))),
            ],
            onReorder: (int oldIndex, int newIndex) {
              final event =
                  JoinOrderChanged(oldIndex: oldIndex, newIndex: newIndex);
              bloc.add(event);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final event = JoinAdded(join: Join.empty());

              bloc.add(event);
            },
            child: const Icon(Icons.add),
            tooltip: 'Add',
          ),
        );
      }

      return build(context);
    });
  }
}

class _JoinItem extends StatelessWidget {
  final JoinsTabBloc bloc;
  final Join join;
  final int index;

  const _JoinItem(
      {required this.bloc, required this.join, required this.index});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ..._actionButtons(bloc, index, join),
        ..._joinItem(bloc, index, join),
        ..._joinConditionItem(bloc, index, join)
      ],
    );
  }
}

List<Widget> _actionButtons(JoinsTabBloc bloc, int index, Join join) {
  return [
    IconButton(
      icon: const Icon(Icons.copy_outlined),
      tooltip: 'Copy',
      onPressed: () {
        final event = JoinCopied(join: join);

        bloc.add(event);
      },
    ),
    IconButton(
      icon: const Icon(Icons.highlight_remove_outlined),
      tooltip: 'Remove',
      onPressed: () {
        final event = JoinRemoved(index: index);

        bloc.add(event);
      },
    ),
  ];
}

List<Widget> _joinItem(JoinsTabBloc bloc, int index, Join join) {
  return [
    DropdownButton<String>(
      value: join.leftTableAlias,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        final event =
            JoinEdited(index: index, join: join, leftTableAlias: newValue);

        bloc.add(event);
      },
      items: <String>['', 'Table1', 'Table2', 'Table3']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
    Checkbox(
      value: join.isLeftAll,
      onChanged: (value) {
        final event = JoinEdited(index: index, join: join, isLeftAll: value);

        bloc.add(event);
      },
    ),
    DropdownButton<String>(
      value: join.rightTableAlias,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        final event =
            JoinEdited(index: index, join: join, rightTableAlias: newValue);

        bloc.add(event);
      },
      items: <String>['', 'Table1', 'Table2', 'Table3']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
    Checkbox(
      value: join.isRightAll,
      onChanged: (value) {
        final event = JoinEdited(index: index, join: join, isRightAll: value);

        bloc.add(event);
      },
    ),
  ];
}

List<Widget> _joinConditionItem(JoinsTabBloc bloc, int index, Join join) {
  var test;

  if (join.condition.isCustom) {
    test = [Text('Test'), Text('Test')];
  } else {
    test = [
      DropdownButton<String>(
        value: join.condition.leftField,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          final condition = Condition(
              isCustom: join.condition.isCustom,
              leftField: newValue ?? '',
              logicalCompareType: join.condition.logicalCompareType,
              rightField: join.condition.rightField,
              customCondition: join.condition.customCondition);
          final event =
              JoinEdited(index: index, join: join, condition: condition);

          bloc.add(event);
        },
        items: <String>[
          '',
          'Table1.Column1',
          'Table1.Column2',
          'Table1.Column3'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
      DropdownButton<String>(
        value: join.condition.logicalCompareType,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          final condition = Condition(
              isCustom: join.condition.isCustom,
              leftField: join.condition.leftField,
              logicalCompareType: newValue ?? '',
              rightField: join.condition.rightField,
              customCondition: join.condition.customCondition);
          final event =
              JoinEdited(index: index, join: join, condition: condition);

          bloc.add(event);
        },
        items: <String>['', '=', '<>', '<', '>', '<=', '>=']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
      DropdownButton<String>(
        value: join.condition.rightField,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          final condition = Condition(
              isCustom: join.condition.isCustom,
              leftField: join.condition.leftField,
              logicalCompareType: join.condition.logicalCompareType,
              rightField: newValue ?? '',
              customCondition: join.condition.customCondition);
          final event =
              JoinEdited(index: index, join: join, condition: condition);

          bloc.add(event);
        },
        items: <String>[
          '',
          'Table2.Column1',
          'Table2.Column2',
          'Table2.Column3'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    ];
  }

  return [
    Checkbox(
      value: join.condition.isCustom,
      onChanged: (value) {
        final condition = Condition(
            isCustom: value ?? false,
            leftField: join.condition.leftField,
            logicalCompareType: join.condition.logicalCompareType,
            rightField: join.condition.rightField,
            customCondition: join.condition.customCondition);
        final event =
            JoinEdited(index: index, join: join, condition: condition);

        bloc.add(event);
      },
    ),
    ...test
  ];
}
