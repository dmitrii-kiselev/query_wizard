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

  final _formKey = GlobalKey<FormState>();
  final debounce = Debounce(delay: const Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    final settingsBloc = BlocProvider.of<QuerySettingsBloc>(context);
    final queryWizardBloc = BlocProvider.of<QueryWizardBloc>(context);
    final queriesBloc = BlocProvider.of<QueriesBloc>(context);
    final queryBatchesBloc = BlocProvider.of<QueryBatchesBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    final currentQuery = queryWizardBloc.currentQuery;
    final currentQueryButch = queryWizardBloc.currentQueryButch;

    final isTop = useState<bool?>(currentQuery?.isTop);
    final topCounterController = useTextEditingController();
    final isDistinct = useState<bool?>(currentQuery?.isDistinct);
    final queryType = useState<QueryType?>(currentQueryButch?.queryType);
    final tempTableNameController = useTextEditingController();

    topCounterController.text = settingsBloc.state.topCounter.toString();
    tempTableNameController.text = settingsBloc.state.tempTableName;

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
        topCounter: int.parse(topCounterController.text),
        isDistinct: isDistinct.value ?? false,
      );

      queryWizardBloc.currentQuery = newQuery;
      queriesBloc.state.queries.insert(index, newQuery);

      settingsBloc.add(
        QuerySettingsChanged(
          tempTableName: settingsBloc.state.tempTableName,
          topCounter: newQuery.topCounter,
          isDistinct: newQuery.isDistinct,
          isTop: newQuery.isTop,
          queryType: settingsBloc.state.queryType,
        ),
      );
    }

    void updateCurrentQueryBatch() {
      final index = queryBatchesBloc.state.queryBatches.indexOf(
        currentQueryButch!,
      );

      queryBatchesBloc.state.queryBatches.remove(currentQueryButch);

      final newQueryButch = QueryBatch(
        id: const Uuid().v1(),
        name: tempTableNameController.text,
        sources: currentQueryButch.sources,
        queries: currentQueryButch.queries,
        aliases: currentQueryButch.aliases,
        queryType: queryType.value ?? QueryType.selectQuery,
        tempTableName: tempTableNameController.text,
      );

      queryWizardBloc.currentQueryButch = newQueryButch;
      queryBatchesBloc.state.queryBatches.insert(index, newQueryButch);

      settingsBloc.add(
        QuerySettingsChanged(
          tempTableName: newQueryButch.tempTableName,
          topCounter: settingsBloc.state.topCounter,
          isDistinct: settingsBloc.state.isDistinct,
          isTop: settingsBloc.state.isTop,
          queryType: newQueryButch.queryType,
        ),
      );
    }

    return BlocBuilder<QuerySettingsBloc, QuerySettingsState>(
      builder: (
        context,
        state,
      ) {
        if (state is QuerySettingsChangedState) {
          topCounterController.text = state.topCounter.toString();
          tempTableNameController.text = state.tempTableName;

          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      CheckboxListTile(
                        value: state.isTop,
                        onChanged: (value) {
                          isTop.value = value;
                          updateCurrentQuery();
                        },
                        title: Text(localizations.top),
                      ),
                      Visibility(
                        visible: isTop.value ?? false,
                        child: TextFormField(
                          controller: topCounterController,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            if (value is int) {
                              debounce.call(
                                () {
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
                        value: state.isDistinct,
                        onChanged: (value) {
                          isDistinct.value = value;
                          updateCurrentQuery();
                        },
                      ),
                      RadioListTile<QueryType>(
                        title: Text(localizations.selectData),
                        value: QueryType.selectQuery,
                        groupValue: state.queryType,
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
                        groupValue: state.queryType,
                        onChanged: (value) {
                          queryType.value = value;
                          updateCurrentQueryBatch();
                        },
                      ),
                      Visibility(
                        visible: queryType.value == QueryType.temporaryTable,
                        child: TextFormField(
                          controller: tempTableNameController,
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            debounce.call(
                              () {
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
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
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
