import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_treeview/tree_view.dart';

import 'package:query_wizard/models.dart';

class SourcesTree extends HookWidget {
  SourcesTree({Key? key, required this.dbElements}) : super(key: key);

  final List<DbElement> dbElements;

  List<Node> _prepareNodes(List<DbElement> dbElements) {
    final nodes = List<Node>.empty(growable: true);

    for (var element in dbElements) {
      var children = List<Node>.empty(growable: true);
      if (element.hasElements) {
        children = _prepareNodes(element.elements);
      }

      final node = Node(
          label: element.name,
          key: element.name,
          icon: NodeIcon.fromIconData(element.nodeType == DbNodeType.table
              ? Icons.table_rows_rounded
              : Icons.horizontal_rule_rounded),
          data: element,
          children: children);

      nodes.add(node);
    }

    return nodes;
  }

  @override
  Widget build(BuildContext context) {
    final selectedNode = useState<String>('');
    final nodes = useState<List<Node>>(_prepareNodes(dbElements));
    final treeViewController = useState(TreeViewController(
      children: nodes.value,
      selectedKey: selectedNode.value,
    ));

    TreeViewTheme _treeViewTheme = TreeViewTheme(
      expanderTheme: ExpanderThemeData(
          type: ExpanderType.caret,
          modifier: ExpanderModifier.circleFilled,
          position: ExpanderPosition.start,
          size: 20,
          color: Colors.blue),
      labelStyle: TextStyle(
        fontSize: 16,
        letterSpacing: 0.3,
      ),
      parentLabelStyle: TextStyle(
        fontSize: 16,
        letterSpacing: 0.1,
        fontWeight: FontWeight.w800,
        color: Colors.blue.shade700,
      ),
      iconTheme: IconThemeData(
        size: 18,
        color: Colors.grey.shade800,
      ),
      colorScheme: Theme.of(context).colorScheme,
    );

    _expandNode(String key, bool expanded) {
      String msg = '${expanded ? "Expanded" : "Collapsed"}: $key';
      debugPrint(msg);
      Node? node = treeViewController.value.getNode(key);
      if (node != null) {
        List<Node> updated = treeViewController.value
            .updateNode(key, node.copyWith(expanded: expanded));

        treeViewController.value =
            treeViewController.value.copyWith(children: updated);
      }
    }

    return TreeView(
      controller: treeViewController.value,
      allowParentSelect: true,
      supportParentDoubleTap: true,
      onExpansionChanged: (key, expanded) => _expandNode(key, expanded),
      onNodeTap: (key) {
        debugPrint('Selected: $key');
        selectedNode.value = key;
        treeViewController.value =
            treeViewController.value.copyWith(selectedKey: key);
      },
      theme: _treeViewTheme,
    );
  }
}
