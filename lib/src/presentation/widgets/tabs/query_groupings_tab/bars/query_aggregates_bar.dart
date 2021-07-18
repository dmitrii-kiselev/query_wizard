import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';

class QueryAggregatesBar extends HookWidget {
  const QueryAggregatesBar({Key? key}) : super(key: key);

  Widget _buildTitle(QueryAggregate aggregate) {
    final field = aggregate.field;
    final tableName = field.parent?.alias ?? field.parent!.name;
    final fieldName = field.name;

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: aggregate.function.stringValue,
            style: const TextStyle(color: SqlColorScheme.procedureOrFunction),
          ),
          const TextSpan(
            text: '(',
            style: TextStyle(color: SqlColorScheme.parentheses),
          ),
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
          const TextSpan(
            text: ')',
            style: TextStyle(color: SqlColorScheme.parentheses),
          ),
        ],
      ),
    );
  }

  void _navigateToChangeAggregateDialog({
    required String id,
    required BuildContext context,
  }) {
    final bloc = BlocProvider.of<QueryAggregatesBloc>(context);
    Navigator.push(
      context,
      DialogRoute<String>(
        context: context,
        builder: (context) => BlocProvider<QueryAggregatesBloc>.value(
          value: bloc,
          child: _ChangeAggregateDialog(id: id),
        ),
      ),
    );
  }

  void _navigateToFieldsSelectionPage({required BuildContext context}) {
    final aggregatesBloc = BlocProvider.of<QueryAggregatesBloc>(context);
    final tablesBloc = BlocProvider.of<QueryTablesBloc>(context);

    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (context) => BlocProvider<QueryTablesBloc>.value(
          value: tablesBloc,
          child: FieldsSelectionPage(
            onSelected: (fields) {
              for (final field in fields) {
                aggregatesBloc.add(
                  QueryAggregateAdded(
                    aggregate: QueryAggregate(
                      id: const Uuid().v1(),
                      field: field,
                      function: QueryAggregateFunction.sum,
                    ),
                  ),
                );
              }
            },
          ),
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryAggregatesBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    return BlocBuilder<QueryAggregatesBloc, QueryAggregatesState>(builder: (
      context,
      state,
    ) {
      if (state is QueryAggregatesChanged) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.aggregates.length,
            itemBuilder: (context, index) {
              final aggregate = state.aggregates[index];

              return Card(
                key: ValueKey('$index'),
                child: ListTile(
                  leading: const Icon(Icons.bar_chart_rounded),
                  onTap: () => _navigateToChangeAggregateDialog(
                    id: aggregate.id,
                    context: context,
                  ),
                  title: _buildTitle(aggregate),
                  trailing: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.highlight_remove_outlined),
                        tooltip: localizations.remove,
                        onPressed: () {
                          bloc.add(QueryAggregateDeleted(id: aggregate.id));
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
                QueryAggregateOrderChanged(
                  oldIndex: oldIndex,
                  newIndex: newIndex,
                ),
              );
            },
            buildDefaultDragHandles: false,
          ),
          floatingActionButton: FloatingActionButton(
            heroTag: 'addAggregate',
            onPressed: () => _navigateToFieldsSelectionPage(context: context),
            tooltip: localizations.add,
            child: const Icon(Icons.add),
          ),
        );
      }

      return const Center(child: CircularProgressIndicator());
    });
  }
}

class _ChangeAggregateDialog extends HookWidget {
  _ChangeAggregateDialog({
    required this.id,
  });

  final String id;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryAggregatesBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;
    final function = useState<QueryAggregateFunction?>(
      QueryAggregateFunction.sum,
    );
    final aggregate = bloc.state.aggregates.findById(id);

    return AlertDialog(
      title: Text(localizations.changeAggregate),
      content: Form(
        key: _formKey,
        child: DropdownButtonFormField<QueryAggregateFunction>(
          value: function.value,
          items: QueryWizardConstants.aggregateFunctions
              .map<DropdownMenuItem<QueryAggregateFunction>>(
            (value) {
              return DropdownMenuItem(
                value: value,
                child: Text(
                  value.stringValue,
                  style: const TextStyle(
                    color: SqlColorScheme.procedureOrFunction,
                  ),
                ),
              );
            },
          ).toList(),
          onChanged: (value) => function.value = value,
          decoration: InputDecoration(
            labelText: localizations.function,
            icon: const Icon(Icons.compare_arrows),
          ),
          validator: (value) {
            if (value == null) {
              return localizations.pleaseSelectProcedureOrFunction;
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (!_formKey.currentState!.validate()) {
              return;
            }

            final newAggregate = QueryAggregate(
              id: aggregate.id,
              field: aggregate.field,
              function: function.value ?? QueryAggregateFunction.sum,
            );

            bloc.add(QueryAggregateUpdated(aggregate: newAggregate));
            Navigator.pop(context);
          },
          child: Text(localizations.save),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(localizations.cancel),
        ),
      ],
    );
  }
}
