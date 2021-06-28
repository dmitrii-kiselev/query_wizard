import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

class QuerySettingsTab extends HookWidget {
  QuerySettingsTab({Key? key}) : super(key: key);

  final debounce = Debounce(delay: const Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    final queryWizardBloc = BlocProvider.of<QueryWizardBloc>(context);
    final queriesBloc = BlocProvider.of<QueriesBloc>(context);
    final queryBatchesBloc = BlocProvider.of<QueryBatchesBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    final currentQuery = queryWizardBloc.currentQuery;
    final currentQueryButch = queryWizardBloc.currentQueryButch;

    final isTop = useState<bool?>(currentQuery?.isTop);
    final topCounter = useState<int?>(currentQuery?.topCounter);
    final isDistinct = useState<bool?>(currentQuery?.isDistinct);
    final queryType = useState<QueryType?>(currentQueryButch?.queryType);
    final tempTableName = useState<String?>(currentQueryButch?.name);

    void updateCurrentQuery() {
      final index = queriesBloc.state.queries.indexOf(currentQuery!);

      queriesBloc.state.queries.remove(currentQuery);

      final newQuery = Query(
        id: const Uuid().v1(),
        name: currentQuery.name,
        sources: currentQuery.sources,
        tables: currentQuery.tables,
        fields: currentQuery.fields,
        joins: currentQuery.joins,
        groupings: currentQuery.groupings,
        aggregates: currentQuery.aggregates,
        conditions: currentQuery.conditions,
        orders: currentQuery.orders,
        isTop: isTop.value ?? false,
        topCounter: topCounter.value ?? 0,
        isDistinct: isDistinct.value ?? false,
      );

      queryWizardBloc.currentQuery = newQuery;
      queriesBloc.state.queries.insert(index, newQuery);
    }

    void updateCurrentQueryBatch() {
      final index = queryBatchesBloc.state.queryBatches.indexOf(
        currentQueryButch!,
      );

      queryBatchesBloc.state.queryBatches.remove(currentQueryButch);

      final newQueryButch = QueryBatch(
        id: const Uuid().v1(),
        name: tempTableName.value ?? '',
        sources: currentQueryButch.sources,
        queries: currentQueryButch.queries,
        aliases: currentQueryButch.aliases,
        queryType: queryType.value ?? QueryType.selectQuery,
      );

      queryWizardBloc.currentQueryButch = newQueryButch;
      queryBatchesBloc.state.queryBatches.insert(index, newQueryButch);
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              CheckboxListTile(
                value: isTop.value,
                onChanged: (value) {
                  isTop.value = value;
                  updateCurrentQuery();
                },
                title: Text(localizations.top),
              ),
              Visibility(
                visible: isTop.value ?? false,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    if (value is int) {
                      debounce.call(
                        () {
                          topCounter.value = int.parse(value);
                          updateCurrentQuery();
                        },
                      );
                    }
                  },
                  decoration: InputDecoration(
                    counter: const Offstage(),
                    labelText: localizations.topCounter,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  maxLength: 10,
                ),
              ),
              CheckboxListTile(
                title: Text(localizations.distinct),
                value: isDistinct.value,
                onChanged: (value) {
                  isDistinct.value = value;
                  updateCurrentQuery();
                },
              ),
              RadioListTile<QueryType>(
                title: Text(localizations.selectData),
                value: QueryType.selectQuery,
                groupValue: queryType.value,
                onChanged: (value) {
                  queryType.value = value;
                  updateCurrentQueryBatch();
                },
              ),
              RadioListTile<QueryType?>(
                title: Text(
                  localizations.createTemporaryTable,
                ),
                value: QueryType.temporaryTable,
                groupValue: queryType.value,
                onChanged: (value) {
                  queryType.value = value;
                  updateCurrentQueryBatch();
                },
              ),
              Visibility(
                visible: queryType.value == QueryType.temporaryTable,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    debounce.call(
                      () {
                        tempTableName.value = value;
                        updateCurrentQueryBatch();
                      },
                    );
                  },
                  decoration: InputDecoration(
                    labelText: localizations.temporaryTableName,
                    icon: const Icon(Icons.table_rows_rounded),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Debounce {
  final Duration delay;
  Timer? _timer;

  Debounce({required this.delay});

  void call(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }
}
