import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/infrastructure.dart';
import 'package:query_wizard/presentation.dart';

class QueryWizard extends StatelessWidget {
  const QueryWizard({
    Key? key,
    required this.isTestMode,
    required this.initialRoute,
  }) : super(key: key);

  final bool isTestMode;
  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return ModelBinding(
      initialModel: QueryWizardOptions(
        themeMode: ThemeMode.light,
        textScaleFactor: systemTextScaleFactorOption,
        customTextDirection: CustomTextDirection.localeBased,
        timeDilation: timeDilation,
        platform: defaultTargetPlatform,
        isTestMode: isTestMode,
      ),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            // By default on desktop, scrollbars are applied by the
            // ScrollBehavior. This overrides that. All vertical scrollables in
            // the query wizard need to be audited before enabling this feature,
            scrollBehavior:
                const MaterialScrollBehavior().copyWith(scrollbars: false),
            restorationScopeId: 'rootQueryWizard',
            title: 'Query Wizard',
            debugShowCheckedModeBanner: false,
            themeMode: QueryWizardOptions.of(context).themeMode,
            theme: QueryWizardThemeData.lightThemeData.copyWith(
              platform: QueryWizardOptions.of(context).platform,
            ),
            darkTheme: QueryWizardThemeData.darkThemeData.copyWith(
              platform: QueryWizardOptions.of(context).platform,
            ),
            localizationsDelegates: const [
              ...QueryWizardLocalizations.localizationsDelegates,
              LocaleNamesLocalizationsDelegate(),
            ],
            initialRoute: initialRoute,
            supportedLocales: QueryWizardLocalizations.supportedLocales,
            locale: QueryWizardOptions.of(context).locale,
            localeResolutionCallback: (locale, supportedLocales) {
              deviceLocale = locale;
              return locale;
            },
            onGenerateRoute: RouteConfiguration.onGenerateRoute,
          );
        },
      ),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildHome();
  }
}

Widget buildHome() {
  return MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<QuerySourcesBloc>()),
      BlocProvider(create: (context) => getIt<QueryTablesBloc>()),
      BlocProvider(create: (context) => getIt<QueryFieldsBloc>()),
      BlocProvider(create: (context) => getIt<QueryJoinsBloc>()),
      BlocProvider(create: (context) => getIt<QueryAggregatesBloc>()),
      BlocProvider(create: (context) => getIt<QueryGroupingsBloc>()),
      BlocProvider(create: (context) => getIt<QueryConditionsBloc>()),
      BlocProvider(create: (context) => getIt<QueriesBloc>()),
      BlocProvider(create: (context) => getIt<QueryOrdersBloc>()),
      BlocProvider(create: (context) => getIt<QueryBatchesBloc>()),
      BlocProvider(create: (context) => getIt<QueryWizardBloc>()),
    ],
    child: const QueryWizardLayout(),
  );
}
