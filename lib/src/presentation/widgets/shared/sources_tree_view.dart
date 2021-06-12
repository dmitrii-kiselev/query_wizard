import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/domain.dart';

class ItemValue {
  const ItemValue({required this.value, required this.checked});

  final QueryElement value;
  final bool checked;
}

typedef SourcesTreeCallback = Function(ItemValue);
typedef QueryElementCallback = Function(QueryElement);

class SourcesTreeView extends StatelessWidget {
  SourcesTreeView({
    Key? key,
    required this.items,
    this.onTap,
    this.onLongPress,
    this.onCopy,
    this.onEdit,
    this.onRemove,
  }) : super(key: key);

  final List<QueryElement> items;
  final SourcesTreeCallback? onTap;
  final SourcesTreeCallback? onLongPress;
  final QueryElementCallback? onCopy;
  final QueryElementCallback? onEdit;
  final QueryElementCallback? onRemove;

  List<Widget> _getChildList(List<QueryElement> items) {
    return items.map((item) {
      if (item.type == QueryElementType.table) {
        return Container(
          margin: EdgeInsets.only(left: 8),
          child: TreeViewChild(
              parent: item,
              children: item.elements,
              onTap: onTap,
              onLongPress: onLongPress,
              onCopy: onCopy,
              onEdit: onEdit,
              onRemove: onRemove),
        );
      }
      return Container(
        margin: const EdgeInsets.only(left: 4.0),
        child: TreeItem(
            item: item,
            onTap: onTap,
            onLongPress: onLongPress,
            onCopy: onCopy,
            onEdit: onEdit,
            onRemove: onRemove),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return _TreeViewData(
      children: _getChildList(items),
    );
  }
}

class _TreeViewData extends StatelessWidget {
  final List<Widget> children;

  const _TreeViewData({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: children.length,
      itemBuilder: (context, index) {
        return children.elementAt(index);
      },
    );
  }
}

class TreeViewChild extends HookWidget {
  TreeViewChild({
    Key? key,
    required this.parent,
    required this.children,
    this.onTap,
    this.onLongPress,
    this.onCopy,
    this.onEdit,
    this.onRemove,
  }) : super(key: key);

  final QueryElement parent;
  final List<QueryElement> children;
  final SourcesTreeCallback? onTap;
  final SourcesTreeCallback? onLongPress;
  final QueryElementCallback? onCopy;
  final QueryElementCallback? onEdit;
  final QueryElementCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState<bool?>(false);

    void toggleExpanded() {
      isExpanded.value = !(isExpanded.value ?? false);
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TreeItem(
            item: parent,
            onTap: (item) {
              if (item.value.type == QueryElementType.table) {
                toggleExpanded();
              }

              if (onTap != null) {
                onTap!(item);
              }
            },
            onLongPress: onLongPress,
            onCopy: onCopy,
            onEdit: onEdit,
            onRemove: onRemove),
        AnimatedContainer(
          duration: Duration(milliseconds: 400),
          child: isExpanded.value ?? false
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: children
                      .map((s) => TreeItem(
                          item: s,
                          onTap: onTap,
                          onLongPress: onLongPress,
                          onCopy: onCopy,
                          onEdit: onEdit,
                          onRemove: onRemove))
                      .toList(),
                )
              : Offstage(),
        ),
      ],
    );
  }
}

class TreeItem extends HookWidget {
  TreeItem({
    required this.item,
    this.onPressedNext,
    this.onTap,
    this.onLongPress,
    this.onCopy,
    this.onEdit,
    this.onRemove,
  });

  final QueryElement item;
  final VoidCallback? onPressedNext;
  final SourcesTreeCallback? onTap;
  final SourcesTreeCallback? onLongPress;
  final QueryElementCallback? onCopy;
  final QueryElementCallback? onEdit;
  final QueryElementCallback? onRemove;

  bool _isRoot() {
    return item.type == QueryElementType.table;
  }

  double _getElevation() {
    return _isRoot() ? 1.0 : 0;
  }

  Icon _getLeadingIcon() {
    return _isRoot()
        ? Icon(Icons.table_rows_rounded)
        : Icon(Icons.horizontal_rule_rounded);
  }

  List<IconButton> _getActions(QueryWizardLocalizations? localizations) {
    final actions = List<IconButton>.empty(growable: true);

    if (_isRoot()) {
      if (onCopy != null) {
        actions.add(IconButton(
          icon: const Icon(Icons.copy_rounded),
          tooltip: localizations?.copy ?? 'Copy',
          onPressed: () => onCopy!(item),
        ));
      }

      if (onEdit != null) {
        actions.add(IconButton(
          icon: const Icon(Icons.edit_rounded),
          tooltip: localizations?.remove ?? 'Edit',
          onPressed: () => onEdit!(item),
        ));
      }

      if (onRemove != null) {
        actions.add(IconButton(
          icon: const Icon(Icons.highlight_remove_rounded),
          tooltip: localizations?.remove ?? 'Remove',
          onPressed: () => onRemove!(item),
        ));
      }

      actions.add(IconButton(
        icon: Icon(Icons.navigate_next),
        onPressed: onPressedNext,
      ));
    }

    return actions;
  }

  @override
  Widget build(BuildContext context) {
    final alias = (_isRoot() ? item.alias ?? '' : item.name);

    final elevation = _getElevation();
    final selected = useState(false);
    final leading = _getLeadingIcon();
    final title = Text(alias == '' ? item.name : alias);
    final actions = _getActions(QueryWizardLocalizations.of(context));

    return Card(
      elevation: elevation,
      child: ListTile(
        selected: selected.value,
        leading: leading,
        title: title,
        trailing: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: actions,
        ),
        onTap: () {
          this.onTap!(ItemValue(value: item, checked: !selected.value));
          if (!_isRoot()) {
            selected.value = !selected.value;
          }
        },
        onLongPress: () {
          if (_isRoot()) {
            if (onLongPress != null) {
              onLongPress!(ItemValue(value: item, checked: !selected.value));
            }

            selected.value = !selected.value;
          }
        },
      ),
    );
  }
}
