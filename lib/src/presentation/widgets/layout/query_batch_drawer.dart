import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

class QueryBatchDrawer extends HookWidget {
  const QueryBatchDrawer({Key? key}) : super(key: key);

  List<ListTile> _getQueryBatches(
      List<QueryBatch> queryBatches, QueryWizardBloc bloc) {
    return <ListTile>[
      for (var queryBatch in queryBatches)
        ListTile(
          title: Text(
            queryBatch.name,
          ),
          leading: const Icon(Icons.batch_prediction_rounded),
          onTap: () {
            bloc.changeQueryBatch(queryBatch);
          },
        )
    ];
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryWizardBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QueryBatchesBloc, QueryBatchesState>(
        builder: (context, state) {
      if (state is QueryBatchesChanged) {
        final drawerItems = ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(localizations?.queryBatches ?? 'Query Batches'),
              accountEmail: const Text(''),
              currentAccountPicture:
                  const CircleAvatar(child: FlutterLogo(size: 42.0)),
            ),
            ..._getQueryBatches(state.queryBatches, bloc),
          ],
        );

        return Drawer(
          child: drawerItems,
        );
      }

      return const Center(child: CircularProgressIndicator());
    });
  }
}
