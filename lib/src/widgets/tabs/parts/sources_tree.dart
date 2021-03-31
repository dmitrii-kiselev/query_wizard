import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_treeview/tree_view.dart';
import 'package:query_wizard/models.dart';

class SourcesTree extends StatefulWidget {
  SourcesTree({Key key, this.dbElements}) : super(key: key);
  final List<DbElement> dbElements;

  @override
  _SourcesTree createState() => _SourcesTree();
}

class _SourcesTree extends State<SourcesTree> {
  String _selectedNode;
  List<Node> _nodes;
  TreeViewController _treeViewController;

  @override
  void initState() {
    _nodes = _prepareNodes(widget.dbElements);
    _treeViewController = TreeViewController(
      children: _nodes,
      selectedKey: _selectedNode,
    );

    super.initState();
  }

  List<Node> _prepareNodes(List<DbElement> dbElements) {
    final nodes = List<Node>.empty(growable: true);

    dbElements.forEach((element) {
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
    });

    return nodes;
  }

  _expandNode(String key, bool expanded) {
    String msg = '${expanded ? "Expanded" : "Collapsed"}: $key';
    debugPrint(msg);
    Node node = _treeViewController.getNode(key);
    if (node != null) {
      List<Node> updated;
      if (key == 'docs') {
        updated = _treeViewController.updateNode(
          key,
          node.copyWith(
              expanded: expanded,
              icon: NodeIcon(
                codePoint: expanded
                    ? Icons.folder_open.codePoint
                    : Icons.folder.codePoint,
                color: expanded ? "blue600" : "grey700",
              )),
        );
      } else {
        updated = _treeViewController.updateNode(
            key, node.copyWith(expanded: expanded));
      }
      setState(() {
        _treeViewController = _treeViewController.copyWith(children: updated);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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

    return TreeView(
      controller: _treeViewController,
      allowParentSelect: true,
      supportParentDoubleTap: true,
      onExpansionChanged: (key, expanded) => _expandNode(key, expanded),
      onNodeTap: (key) {
        debugPrint('Selected: $key');
        setState(() {
          _selectedNode = key;
          _treeViewController = _treeViewController.copyWith(selectedKey: key);
        });
      },
      theme: _treeViewTheme,
    );
  }
}
