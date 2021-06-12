// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application.dart' as _i16;
import '../../../infrastructure.dart' as _i13;
import '../../application/blocs/queries/queries_bloc.dart' as _i3;
import '../../application/blocs/query_aggregates/query_aggregates_bloc.dart'
    as _i4;
import '../../application/blocs/query_batches/query_batches_bloc.dart' as _i5;
import '../../application/blocs/query_conditions/query_conditions_bloc.dart'
    as _i6;
import '../../application/blocs/query_fields/query_fields_bloc.dart' as _i7;
import '../../application/blocs/query_groupings/query_groupings_bloc.dart'
    as _i8;
import '../../application/blocs/query_joins/query_joins_bloc.dart' as _i9;
import '../../application/blocs/query_more/query_more_bloc.dart' as _i10;
import '../../application/blocs/query_orders/query_orders_bloc.dart' as _i11;
import '../../application/blocs/query_sources/query_sources_bloc.dart' as _i12;
import '../../application/blocs/query_tables/query_tables_bloc.dart' as _i14;
import '../../application/blocs/query_wizard/query_wizard_bloc.dart' as _i15;
import '../repositories/query_wizard_client.dart' as _i17;
import '../repositories/query_wizard_repository.dart' as _i18;

const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.QueriesBloc>(() => _i3.QueriesBloc());
  gh.lazySingleton<_i4.QueryAggregatesBloc>(() => _i4.QueryAggregatesBloc());
  gh.lazySingleton<_i5.QueryBatchesBloc>(() => _i5.QueryBatchesBloc());
  gh.lazySingleton<_i6.QueryConditionsBloc>(() => _i6.QueryConditionsBloc());
  gh.lazySingleton<_i7.QueryFieldsBloc>(() => _i7.QueryFieldsBloc());
  gh.lazySingleton<_i8.QueryGroupingsBloc>(() => _i8.QueryGroupingsBloc());
  gh.lazySingleton<_i9.QueryJoinsBloc>(() => _i9.QueryJoinsBloc());
  gh.lazySingleton<_i10.QueryMoreBloc>(() => _i10.QueryMoreBloc());
  gh.lazySingleton<_i11.QueryOrdersBloc>(() => _i11.QueryOrdersBloc());
  gh.lazySingleton<_i12.QuerySourcesBloc>(() => _i12.QuerySourcesBloc(
      queryWizardRepository: get<_i13.QueryWizardRepository>()));
  gh.lazySingleton<_i14.QueryTablesBloc>(() => _i14.QueryTablesBloc());
  gh.lazySingleton<_i15.QueryWizardBloc>(() => _i15.QueryWizardBloc(
      sourcesBloc: get<_i16.QuerySourcesBloc>(),
      tablesBloc: get<_i16.QueryTablesBloc>(),
      fieldsBloc: get<_i16.QueryFieldsBloc>(),
      joinsBloc: get<_i16.QueryJoinsBloc>(),
      aggregatesBloc: get<_i16.QueryAggregatesBloc>(),
      groupingsBloc: get<_i16.QueryGroupingsBloc>(),
      queriesBloc: get<_i16.QueriesBloc>(),
      conditionsBloc: get<_i16.QueryConditionsBloc>(),
      batchesBloc: get<_i16.QueryBatchesBloc>(),
      ordersBloc: get<_i16.QueryOrdersBloc>(),
      queryWizardRepository: get<_i13.QueryWizardRepository>()));
  gh.lazySingleton<_i17.QueryWizardClient>(
      () => _i17.DesignTimeQueryWizardClient(),
      registerFor: {_dev});
  gh.lazySingleton<_i17.QueryWizardClient>(
      () => _i17.FakeQueryWizardApiClient(),
      registerFor: {_test});
  gh.lazySingleton<_i18.QueryWizardRepository>(() => _i18.QueryWizardRepository(
      queryWizardClient: get<_i13.QueryWizardClient>()));
  return get;
}
