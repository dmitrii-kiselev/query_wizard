import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';
import 'package:query_wizard/presentation.dart';

class QueryOrdersTab extends HookWidget {
  const QueryOrdersTab({Key? key}) : super(key: key);

  Widget _buildTitle(QueryOrder order) {
    final field = order.field;
    final tableName = field.parent?.alias ?? field.parent!.name;
    final fieldName = field.name;

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
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
          const TextSpan(text: ' '),
          TextSpan(
            text: order.type.stringValue,
            style: const TextStyle(color: SqlColorScheme.keyword),
          ),
        ],
      ),
    );
  }

  void _navigateToChangeQueryOrderDialog({
    required String id,
    required BuildContext context,
  }) {
    final bloc = BlocProvider.of<QueryOrdersBloc>(context);
    Navigator.push(
      context,
      DialogRoute<String>(
        context: context,
        builder: (_) => BlocProvider<QueryOrdersBloc>.value(
          value: bloc,
          child: _ChangeQueryOrderDialog(id: id),
        ),
      ),
    );
  }

  void _navigateToFieldsSelectionPage({
    required BuildContext context,
  }) {
    final ordersBloc = BlocProvider.of<QueryOrdersBloc>(context);
    final tablesBloc = BlocProvider.of<QueryTablesBloc>(context);

    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (context) => BlocProvider<QueryTablesBloc>.value(
          value: tablesBloc,
          child: FieldsSelectionPage(
            onSelected: (fields) {
              for (final field in fields) {
                ordersBloc.add(
                  QueryOrderAdded(
                    order: QueryOrder(
                      id: const Uuid().v1(),
                      field: field,
                      type: QuerySortingType.ascending,
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
    final bloc = BlocProvider.of<QueryOrdersBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    return BlocBuilder<QueryOrdersBloc, QueryOrdersState>(
      builder: (
        context,
        state,
      ) {
        if (state is QueryOrdersChanged) {
          return Scaffold(
            body: ReorderableListView.builder(
              itemCount: state.orders.length,
              itemBuilder: (context, index) {
                final order = state.orders[index];

                return Card(
                  key: ValueKey('$index'),
                  child: ListTile(
                    leading: const Icon(Icons.sort_rounded),
                    onTap: () => _navigateToChangeQueryOrderDialog(
                      id: order.id,
                      context: context,
                    ),
                    title: _buildTitle(order),
                    trailing: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: localizations.remove,
                          onPressed: () {
                            bloc.add(QueryOrderDeleted(id: order.id));
                          },
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
                  QueryOrderOrderChanged(
                    oldIndex: oldIndex,
                    newIndex: newIndex,
                  ),
                );
              },
              buildDefaultDragHandles: false,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _navigateToFieldsSelectionPage(context: context),
              tooltip: localizations.add,
              child: const Icon(Icons.add),
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class _ChangeQueryOrderDialog extends HookWidget {
  const _ChangeQueryOrderDialog({
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryOrdersBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;
    final type = useState<QuerySortingType?>(QuerySortingType.ascending);
    final order = bloc.state.orders.findById(id);

    return AlertDialog(
      title: Text(localizations.changeSortingField),
      content: DropdownButtonFormField<QuerySortingType>(
        value: type.value,
        items: QueryWizardConstants.sortingTypes
            .map<DropdownMenuItem<QuerySortingType>>(
          (value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                value.stringValue,
                style: const TextStyle(
                  color: SqlColorScheme.keyword,
                ),
              ),
            );
          },
        ).toList(),
        onChanged: (value) => type.value = value,
        decoration: InputDecoration(
          labelText: localizations.sorting,
          icon: const Icon(Icons.compare_arrows),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            final newOrder = QueryOrder(
              id: order.id,
              field: order.field,
              type: type.value ?? QuerySortingType.ascending,
            );

            bloc.add(QueryOrderUpdated(order: newOrder));
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
