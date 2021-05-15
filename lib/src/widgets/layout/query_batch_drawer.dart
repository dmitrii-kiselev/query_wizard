import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryBatchDrawer extends HookWidget {
  const QueryBatchDrawer({Key? key}) : super(key: key);

  List<ListTile> _getQueryBatches(
      List<QueryBatch> queryBatches, QueryWizardBloc bloc) {
    return <ListTile>[
      for (int index = 0; index < queryBatches.length; index++)
        ListTile(
          title: Text(
            queryBatches[index].name,
          ),
          leading: const Icon(Icons.batch_prediction_rounded),
          onTap: () {
            bloc.changeQueryBatch(queryBatches[index]);
          },
        )
    ];
  }

  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryWizardBloc>(context);

    return BlocBuilder<QueryBatchTabBloc, QueryBatchTabState>(
        builder: (context, state) {
      if (state is QueryBatchesChanged) {
        final drawerItems = ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Query Batches'),
              accountEmail: Text(''),
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

      return Center(child: CircularProgressIndicator());
    });
  }
}
