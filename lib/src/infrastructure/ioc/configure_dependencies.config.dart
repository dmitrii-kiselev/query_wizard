// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application.dart' as _i19;
import '../../../domain.dart' as _i3;
import '../../application/blocs/queries/queries_bloc.dart' as _i7;
import '../../application/blocs/query_aggregates/query_aggregates_bloc.dart'
    as _i8;
import '../../application/blocs/query_batches/query_batches_bloc.dart' as _i9;
import '../../application/blocs/query_conditions/query_conditions_bloc.dart'
    as _i10;
import '../../application/blocs/query_fields/query_fields_bloc.dart' as _i11;
import '../../application/blocs/query_groupings/query_groupings_bloc.dart'
    as _i12;
import '../../application/blocs/query_joins/query_joins_bloc.dart' as _i13;
import '../../application/blocs/query_orders/query_orders_bloc.dart' as _i14;
import '../../application/blocs/query_settings/query_settings_bloc.dart'
    as _i15;
import '../../application/blocs/query_sources/query_sources_bloc.dart' as _i16;
import '../../application/blocs/query_tables/query_tables_bloc.dart' as _i17;
import '../../application/blocs/query_wizard/query_wizard_bloc.dart' as _i18;
import '../clients/design_time_query_wizard_client.dart' as _i4;
import '../clients/fake_query_wizard_api_client.dart' as _i5;
import '../repositories/query_wizard_repository_impl.dart' as _i6;

const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IQueryWizardClient>(
      () => _i4.DesignTimeQueryWizardClient(),
      registerFor: {_dev});
  gh.lazySingleton<_i3.IQueryWizardClient>(() => _i5.FakeQueryWizardApiClient(),
      registerFor: {_test});
  gh.lazySingleton<_i3.IQueryWizardRepository>(() => _i6.QueryWizardRepository(
      queryWizardClient: get<_i3.IQueryWizardClient>()));
  gh.lazySingleton<_i7.QueriesBloc>(() => _i7.QueriesBloc());
  gh.lazySingleton<_i8.QueryAggregatesBloc>(() => _i8.QueryAggregatesBloc());
  gh.lazySingleton<_i9.QueryBatchesBloc>(() => _i9.QueryBatchesBloc());
  gh.lazySingleton<_i10.QueryConditionsBloc>(() => _i10.QueryConditionsBloc());
  gh.lazySingleton<_i11.QueryFieldsBloc>(() => _i11.QueryFieldsBloc());
  gh.lazySingleton<_i12.QueryGroupingsBloc>(() => _i12.QueryGroupingsBloc());
  gh.lazySingleton<_i13.QueryJoinsBloc>(() => _i13.QueryJoinsBloc());
  gh.lazySingleton<_i14.QueryOrdersBloc>(() => _i14.QueryOrdersBloc());
  gh.lazySingleton<_i15.QuerySettingsBloc>(() => _i15.QuerySettingsBloc());
  gh.lazySingleton<_i16.QuerySourcesBloc>(() => _i16.QuerySourcesBloc(
      queryWizardRepository: get<_i3.IQueryWizardRepository>()));
  gh.lazySingleton<_i17.QueryTablesBloc>(() => _i17.QueryTablesBloc());
  gh.lazySingleton<_i18.QueryWizardBloc>(() => _i18.QueryWizardBloc(
      sourcesBloc: get<_i19.QuerySourcesBloc>(),
      tablesBloc: get<_i19.QueryTablesBloc>(),
      fieldsBloc: get<_i19.QueryFieldsBloc>(),
      joinsBloc: get<_i19.QueryJoinsBloc>(),
      aggregatesBloc: get<_i19.QueryAggregatesBloc>(),
      groupingsBloc: get<_i19.QueryGroupingsBloc>(),
      queriesBloc: get<_i19.QueriesBloc>(),
      conditionsBloc: get<_i19.QueryConditionsBloc>(),
      batchesBloc: get<_i19.QueryBatchesBloc>(),
      ordersBloc: get<_i19.QueryOrdersBloc>(),
      queryWizardRepository: get<_i3.IQueryWizardRepository>()));
  return get;
}
