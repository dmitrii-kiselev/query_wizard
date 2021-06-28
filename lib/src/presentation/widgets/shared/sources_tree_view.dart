import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/domain.dart';

class ItemValue {
  const ItemValue({
    required this.value,
    required this.checked,
  });

  final QueryElement value;
  final bool checked;
}

typedef SourcesTreeCallback = Function(ItemValue);
typedef QueryElementCallback = Function(QueryElement);

class SourcesTreeView extends StatelessWidget {
  const SourcesTreeView({
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
    return items.map(
      (item) {
        if (item.type == QueryElementType.table) {
          return Container(
            margin: const EdgeInsets.only(left: 8),
            child: TreeViewChild(
              parent: item,
              children: item.elements,
              onTap: onTap,
              onLongPress: onLongPress,
              onCopy: onCopy,
              onEdit: onEdit,
              onRemove: onRemove,
            ),
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
            onRemove: onRemove,
          ),
        );
      },
    ).toList();
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
  const TreeViewChild({
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
          onRemove: onRemove,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          child: isExpanded.value ?? false
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: children
                      .map(
                        (s) => TreeItem(
                            item: s,
                            onTap: onTap,
                            onLongPress: onLongPress,
                            onCopy: onCopy,
                            onEdit: onEdit,
                            onRemove: onRemove),
                      )
                      .toList(),
                )
              : const Offstage(),
        ),
      ],
    );
  }
}

class TreeItem extends HookWidget {
  const TreeItem({
    Key? key,
    required this.item,
    this.onPressedNext,
    this.onTap,
    this.onLongPress,
    this.onCopy,
    this.onEdit,
    this.onRemove,
  }) : super(key: key);

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
        ? const Icon(Icons.table_rows_rounded)
        : const Icon(Icons.horizontal_rule_rounded);
  }

  List<Widget> _getActions(QueryWizardLocalizations localizations) {
    return [
      Visibility(
        visible: _isRoot() && onCopy != null,
        child: IconButton(
          icon: const Icon(Icons.copy_rounded),
          tooltip: localizations.copy,
          onPressed: () => onCopy!(item),
        ),
      ),
      Visibility(
        visible: _isRoot() && onEdit != null,
        child: IconButton(
          icon: const Icon(Icons.edit_rounded),
          tooltip: localizations.edit,
          onPressed: () => onEdit!(item),
        ),
      ),
      Visibility(
        visible: _isRoot() && onRemove != null,
        child: IconButton(
          icon: const Icon(Icons.highlight_remove_rounded),
          tooltip: localizations.remove,
          onPressed: () => onRemove!(item),
        ),
      ),
      Visibility(
        visible: _isRoot() && onRemove != null,
        child: IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: onPressedNext,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    final alias = _isRoot() ? item.alias ?? '' : item.name;
    final elevation = _getElevation();
    final selected = useState(false);
    final leading = _getLeadingIcon();
    final title = Text(alias == '' ? item.name : alias);
    final actions = _getActions(QueryWizardLocalizations.of(context)!);

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
          onTap!(
            ItemValue(value: item, checked: !selected.value),
          );
          if (!_isRoot()) {
            selected.value = !selected.value;
          }
        },
        onLongPress: () {
          if (_isRoot()) {
            if (onLongPress != null) {
              onLongPress!(
                ItemValue(value: item, checked: !selected.value),
              );
            }

            selected.value = !selected.value;
          }
        },
      ),
    );
  }
}
