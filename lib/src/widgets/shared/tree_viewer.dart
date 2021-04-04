import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:query_wizard/models.dart';
import 'package:query_wizard/widgets.dart';

class TreeViewer extends StatelessWidget {
  const TreeViewer({
    required this.header,
    required this.items,
    required this.iconData,
  });

  final String header;
  final List<DbElement> items;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAlias,
      color: colorScheme.surface,
      child: Semantics(
        container: true,
        child: FocusTraversalGroup(
          policy: WidgetOrderTraversalPolicy(),
          child: Column(
            children: [
              _TreeViewerHeader(
                header: header,
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: colorScheme.background,
              ),
              Flexible(
                child: SourcesTree(
                  key: ValueKey('${header}DemoList'),
                  dbElements: items,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TreeViewerHeader extends StatelessWidget {
  const _TreeViewerHeader({
    required this.header,
  });

  final String header;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      // Makes integration tests possible.
      key: ValueKey('${header}CategoryHeader'),
      color: colorScheme.onBackground,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 8),
              child: Semantics(
                header: true,
                child: Text(
                  header,
                  style: Theme.of(context).textTheme.headline5?.apply(
                        color: colorScheme.onSurface,
                      ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
