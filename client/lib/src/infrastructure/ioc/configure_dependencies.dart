import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/infrastructure.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies(String env) => $initGetIt(getIt, environment: env);
