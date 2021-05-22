import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/models.dart';

class QueryMoreTab extends HookWidget {
  const QueryMoreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isTop = useState<bool?>(false);
    final topCounter = useState<int?>(null);
    final isDistinct = useState<bool?>(false);
    final queryType = useState<QueryType?>(QueryType.selectQuery);
    final tempTableName = useState<String?>(null);

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              CheckboxListTile(
                value: isTop.value,
                onChanged: (value) => isTop.value = value,
                title: Text('Top'),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onSaved: (value) =>
                    topCounter.value = value != null ? int.parse(value) : null,
                decoration: InputDecoration(
                    counter: Offstage(), labelText: 'Top counter'),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                maxLength: 10,
              ),
              CheckboxListTile(
                title: const Text('Distinct'),
                value: isDistinct.value,
                onChanged: (value) => isDistinct.value = value,
              ),
              RadioListTile<QueryType>(
                title: const Text('Select data'),
                value: QueryType.selectQuery,
                groupValue: queryType.value,
                onChanged: (value) => queryType.value = value,
              ),
              RadioListTile<QueryType?>(
                title: const Text('Create temporary table'),
                value: QueryType.temporaryTable,
                groupValue: queryType.value,
                onChanged: (value) => queryType.value = value,
              ),
              TextFormField(
                onSaved: (value) => tempTableName.value = value,
                decoration: InputDecoration(
                    labelText: 'Temporary table name',
                    icon: Icon(Icons.table_rows_rounded)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
