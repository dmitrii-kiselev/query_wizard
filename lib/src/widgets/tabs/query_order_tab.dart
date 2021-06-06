import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/widgets.dart';

class QueryOrderTab extends HookWidget {
  const QueryOrderTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryOrdersBloc>(context);
    final tables = BlocProvider.of<QueryTablesBloc>(context).state.tables;
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryOrdersBloc, QueryOrdersState>(
        builder: (context, state) {
      if (state is QueryOrdersChanged) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.orders.length,
            itemBuilder: (context, index) {
              final grouping = state.orders[index];
              return Card(
                key: ValueKey('$index'),
                child: ListTile(
                    leading: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations?.remove ?? 'Remove',
                          onPressed: () {
                            final event = QueryOrderDeleted(index: index);
                            bloc.add(event);
                          },
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        DialogRoute<String>(
                          context: context,
                          builder: (context) => _ChangeOrderDialog(
                            index: index,
                            bloc: bloc,
                          ),
                        ),
                      );
                    },
                    title: Text(grouping.toString())),
              );
            },
            padding: const EdgeInsets.all(8),
            onReorder: (int oldIndex, int newIndex) {
              final event = QueryOrderOrderChanged(
                  oldIndex: oldIndex, newIndex: newIndex);
              bloc.add(event);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => FieldsSelectionPage(
                        tables: tables,
                        onSelected: (fields) {
                          fields.forEach((f) {
                            bloc.add(QueryOrderAdded(
                                order: QueryOrder(
                                    field: f.name,
                                    type: QuerySortingType.ascending)));
                          });
                        }),
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

class _ChangeOrderDialog extends HookWidget {
  const _ChangeOrderDialog({required this.index, required this.bloc});

  final int index;
  final QueryOrdersBloc bloc;

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    final type = useState<QuerySortingType?>(QuerySortingType.ascending);
    final sorting = bloc.state.orders.elementAt(index);
    final List<QuerySortingType> sortingTypes = [
      QuerySortingType.ascending,
      QuerySortingType.descending,
    ];

    return AlertDialog(
      title: Text(localizations?.changeSortingField ?? 'Change sorting field'),
      content: DropdownButtonFormField<QuerySortingType>(
        value: type.value,
        items: sortingTypes.map<DropdownMenuItem<QuerySortingType>>(
          (value) {
            return DropdownMenuItem(
              child: Text(value.toString()),
              value: value,
            );
          },
        ).toList(),
        onChanged: (value) => type.value = value,
        decoration: InputDecoration(
          labelText: localizations?.sorting ?? 'Sorting',
          icon: Icon(Icons.compare_arrows),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            final newOrder = QueryOrder(
                field: sorting.field,
                type: type.value ?? QuerySortingType.ascending);

            final event = QueryOrderUpdated(index: index, order: newOrder);

            bloc.add(event);
            Navigator.pop(context);
          },
          child: Text(localizations?.save ?? 'Save'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(localizations?.cancel ?? 'Cancel'),
        ),
      ],
    );
  }
}
