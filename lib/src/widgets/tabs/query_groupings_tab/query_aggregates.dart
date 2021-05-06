import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class QueryAggregates extends HookWidget {
  QueryAggregates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    return Center(
      child: ElevatedButton(
        onPressed: showBottomSheetCallback.value,
        child: Text('Select'),
      ),
    );
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
