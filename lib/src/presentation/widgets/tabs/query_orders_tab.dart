import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';

class QueryOrdersTab extends HookWidget {
  const QueryOrdersTab({Key? key}) : super(key: key);

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
                            bloc.add(QueryOrderDeleted(index: index));
                          },
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        DialogRoute<String>(
                          context: context,
                          builder: (context) => _ChangeQueryOrderDialog(
                            index: index,
                            bloc: bloc,
                          ),
                        ),
                      );
                    },
                    title: Text(grouping.toString())),
              );
            },
            padding: const EdgeInsets.all(
                QueryWizardConstants.defaultEdgeInsetsAllValue),
            onReorder: (int oldIndex, int newIndex) {
              bloc.add(QueryOrderOrderChanged(
                  oldIndex: oldIndex, newIndex: newIndex));
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

class _ChangeQueryOrderDialog extends HookWidget {
  const _ChangeQueryOrderDialog({required this.index, required this.bloc});

  final int index;
  final QueryOrdersBloc bloc;

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    final type = useState<QuerySortingType?>(QuerySortingType.ascending);
    final sorting = bloc.state.orders.elementAt(index);

    return AlertDialog(
      title: Text(localizations?.changeSortingField ?? 'Change sorting field'),
      content: DropdownButtonFormField<QuerySortingType>(
        value: type.value,
        items: QueryWizardConstants.sortingTypes
            .map<DropdownMenuItem<QuerySortingType>>(
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

            bloc.add(QueryOrderUpdated(index: index, order: newOrder));
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
