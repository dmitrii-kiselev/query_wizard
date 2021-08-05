import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/presentation.dart';

class QueryWizardLayout extends HookWidget {
  const QueryWizardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QueryWizardBloc>(context);
    final localizations = QueryWizardLocalizations.of(context)!;

    bloc.add(const QuerySchemaRequested('query'));

    return Scaffold(
      body: BlocBuilder<QueryWizardBloc, QueryWizardState>(
        builder: (
          context,
          state,
        ) {
          if (state is QueryWizardLoadInProgress) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is QueryWizardLoadSuccess) {
            return Scaffold(
              appBar: AppBar(
                title: Text(localizations.queryWizard),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ],
              ),
              body: Center(
                child: Row(
                  children: const [
                    QueryNavigationRail(),
                    VerticalDivider(thickness: 1, width: 1),
                    Expanded(
                      child: Center(
                        child: QueryWizardTabs(),
                      ),
                    ),
                  ],
                ),
              ),
              drawer: const QueryBatchDrawer(),
            );
          }

          if (state is QueryWizardLoadFailure) {
            return Center(
              child: Text(
                localizations.somethingWentWrong,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
