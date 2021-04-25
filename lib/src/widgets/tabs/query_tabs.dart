import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/blocs.dart';

class QueryWizardTabs extends HookWidget {
  final TabController tabController;
  final List<Widget> tabs;

  QueryWizardTabs({Key? key, required this.tabController, required this.tabs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<QuerySourcesBloc>(context).add(QuerySourcesRequested());

    final localizations = QueryWizardLocalizations.of(context);

    return BlocBuilder<QuerySourcesBloc, QuerySourcesState>(
        builder: (context, state) {
      if (state is QuerySourcesInitial) {
        return Center(child: Text(localizations?.queryWizard ?? ''));
      }

      if (state is QuerySourcesLoadInProgress) {
        return Center(child: CircularProgressIndicator());
      }

      if (state is QuerySourcesLoadSuccess) {
        return TabBarView(
          controller: tabController,
          children: [
            for (final tab in tabs)
              Center(
                child: tab,
              ),
          ],
        );
      }

      if (state is QuerySourcesLoadFailure) {
        return Center(
          child: Text(
            localizations?.somethingWentWrong ?? '',
            style: TextStyle(color: Colors.red),
          ),
        );
      }

      return build(context);
    });
  }
}
