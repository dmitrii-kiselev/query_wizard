import 'package:flutter/material.dart';

import 'package:query_wizard/layout.dart';
import 'package:query_wizard/models.dart';

class TreeItem extends StatelessWidget {
  const TreeItem({Key key, this.item, this.iconData}) : super(key: key);

  final DbElement item;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      // Makes integration tests possible.
      key: ValueKey(item),
      color: Theme.of(context).colorScheme.surface,
      child: MergeSemantics(
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 32,
              top: 20,
              end: isDisplayDesktop(context) ? 16 : 8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  iconData,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: 40),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: textTheme.subtitle1
                            .apply(color: colorScheme.onSurface),
                      ),
                      Text(
                        item.name,
                        style: textTheme.overline.apply(
                          color: colorScheme.onSurface.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Divider(
                        thickness: 1,
                        height: 1,
                        color: Theme.of(context).colorScheme.background,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
