import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/blocs.dart';

class QueryAggregates extends HookWidget {
  QueryAggregates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryAggregatesBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);
    final showBottomSheetCallback = useState<VoidCallback?>(null);
    final selectionListClosed = useState(true);
    final mounted = useIsMounted();

    void _showPersistentBottomSheet() {
      showBottomSheetCallback.value = null;

      Scaffold.of(context)
          .showBottomSheet<void>(
            (context) {
              selectionListClosed.value = false;
              return _SelectionList();
            },
            elevation: 25,
          )
          .closed
          .whenComplete(() {
            if (mounted()) {
              selectionListClosed.value = true;
              showBottomSheetCallback.value = _showPersistentBottomSheet;
            }
          });
    }

    if (selectionListClosed.value) {
      showBottomSheetCallback.value = _showPersistentBottomSheet;
    }

    return BlocBuilder<QueryAggregatesBloc, QueryAggregatesState>(
        builder: (context, state) {
      if (state is QueryAggregatesChanged) {
        return Scaffold(
          body: ReorderableListView.builder(
            itemCount: state.aggregates.length,
            itemBuilder: (context, index) {
              final join = state.aggregates[index];
              return Card(
                child: ListTile(
                    leading: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.highlight_remove_outlined),
                          tooltip: 'Remove',
                          onPressed: () {
                            final event = QueryAggregateRemoved(index: index);
                            bloc.add(event);
                          },
                        ),
                      ],
                    ),
                    title: Text(join.toString())),
              );
            },
            padding: const EdgeInsets.all(8),
            onReorder: (int oldIndex, int newIndex) {
              final event = QueryAggregateOrderChanged(
                  oldIndex: oldIndex, newIndex: newIndex);
              bloc.add(event);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: showBottomSheetCallback.value,
            child: const Icon(Icons.add),
            tooltip: localizations?.add ?? 'Add',
          ),
        );
      }

      return Center(child: CircularProgressIndicator());
    });
  }
}

class _SelectionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          Container(
            height: 70,
            child: Center(
              child: Text(
                'Header',
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
