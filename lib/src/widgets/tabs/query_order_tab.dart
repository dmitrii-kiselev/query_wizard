import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/blocs.dart';

class QueryOrderTab extends HookWidget {
  const QueryOrderTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showSelectionListCallback = useState<VoidCallback?>(null);
    final mounted = useIsMounted();
    final bloc = BlocProvider.of<QueryOrderTabBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);

    void _showFieldSelectionList() {
      showSelectionListCallback.value = null;

      Scaffold.of(context)
          .showBottomSheet<void>(
            (context) {
              return _FieldSelectionList();
            },
            elevation: 25,
          )
          .closed
          .whenComplete(() {
            if (mounted()) {
              showSelectionListCallback.value = _showFieldSelectionList;
            }
          });
    }

    if (showSelectionListCallback.value == null) {
      showSelectionListCallback.value = _showFieldSelectionList;
    }

    return BlocBuilder<QueryOrderTabBloc, QueryOrderTabState>(
        builder: (context, state) {
      if (state is QuerySortingsChanged) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.sortings.length,
            itemBuilder: (context, index) {
              final sorting = state.sortings[index];
              return Card(
                key: ValueKey('$index'),
                child: ListTile(
                    leading: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: 'Remove',
                          onPressed: () {
                            final event = QuerySortingRemoved(index: index);
                            bloc.add(event);
                          },
                        ),
                      ],
                    ),
                    title: Text(sorting.toString())),
              );
            },
            padding: const EdgeInsets.all(8),
            onReorder: (int oldIndex, int newIndex) {
              final event = QuerySortingOrderChanged(
                  oldIndex: oldIndex, newIndex: newIndex);
              bloc.add(event);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: showSelectionListCallback.value,
            child: const Icon(Icons.add),
            tooltip: localizations?.add ?? 'Add',
          ),
        );
      }

      return Center(child: CircularProgressIndicator());
    });
  }
}

class _FieldSelectionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);

    return Container(
      height: 500,
      child: Column(
        children: [
          Container(
            height: 70,
            child: Center(
              child: Text(
                localizations?.tables ?? 'Tables',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(thickness: 1),
          Expanded(
            child: ListView.builder(
              itemCount: 21,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(index.toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
