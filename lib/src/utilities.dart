import 'package:flutter/material.dart';
import 'package:flutter_treeview/tree_view.dart';

import 'package:query_wizard/models.dart';

class Utilities {
  static List<Node> prepareNodes(List<DbElement> dbElements) {
    final nodes = List<Node>.empty(growable: true);

    for (var element in dbElements) {
      var children = List<Node>.empty(growable: true);
      if (element.hasElements) {
        children = prepareNodes(element.elements);
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
}
