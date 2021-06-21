import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';

class QueryWizardTabs extends HookWidget {
  const QueryWizardTabs({
    Key? key,
    required this.tabController,
    required this.tabs,
  }) : super(key: key);

  final TabController tabController;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<QuerySourcesBloc>(context).add(
      const QuerySourcesEvent.sourcesRequested(),
    );

    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QuerySourcesBloc, QuerySourcesState>(
      builder: (
        context,
        state,
      ) {
        return state.map(
          (value) {
            return Center(
              child: Text(localizations?.queryWizard ?? 'Query Wizard'),
            );
          },
          loadInProgress: (s) {
            return const Center(child: CircularProgressIndicator());
          },
          loadSuccess: (s) {
            return TabBarView(
              controller: tabController,
              children: [
                for (final tab in tabs)
                  Center(
                    child: tab,
                  ),
              ],
            );
          },
          loadFailure: (s) {
            return Center(
              child: Text(
                localizations?.somethingWentWrong ?? 'Something went wrong!',
                style: const TextStyle(color: Colors.red),
              ),
            );
          },
          sourcesChanged: (s) {
            return TabBarView(
              controller: tabController,
              children: [
                for (final tab in tabs)
                  Center(
                    child: tab,
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
