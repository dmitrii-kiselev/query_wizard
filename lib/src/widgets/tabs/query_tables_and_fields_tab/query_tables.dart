import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryTables extends StatelessWidget {
  QueryTables({Key? key, required this.tables}) : super(key: key);

  final List<DbElement> tables;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueryTablesBloc, QueryTablesState>(
        builder: (context, state) {
      if (state is QueryTablesChanged) {
        return Scaffold(
          body: ListView.builder(
            itemCount: tables.length,
            itemBuilder: (context, index) {
              final table = tables[index];
              return OpenContainer<bool>(
                transitionType: ContainerTransitionType.fade,
                openBuilder: (context, openContainer) => const _DetailsPage(),
                tappable: false,
                closedShape: const RoundedRectangleBorder(),
                closedElevation: 0,
                closedBuilder: (context, openContainer) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.table_rows_rounded),
                      onTap: openContainer,
                      title: Text(table.name),
                      subtitle: Text(table.name),
                    ),
                  );
                },
              );
            },
            padding: const EdgeInsets.all(8),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
            tooltip: 'Add',
          ),
        );
      }

      return Center(child: CircularProgressIndicator());
    });
  }
}

class _DetailsPage extends StatelessWidget {
  const _DetailsPage();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details Page',
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.black38,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(70),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title',
                  style: textTheme.headline5!.copyWith(
                    color: Colors.black54,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Description',
                  style: textTheme.bodyText2!.copyWith(
                    color: Colors.black54,
                    height: 1.5,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
