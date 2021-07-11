// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application.dart' as _i5;
import '../../../domain.dart' as _i3;
import '../../application/blocs/queries/queries_bloc.dart' as _i9;
import '../../application/blocs/query_aggregates/query_aggregates_bloc.dart'
    as _i10;
import '../../application/blocs/query_batches/query_batches_bloc.dart' as _i11;
import '../../application/blocs/query_conditions/query_conditions_bloc.dart'
    as _i12;
import '../../application/blocs/query_fields/query_fields_bloc.dart' as _i13;
import '../../application/blocs/query_groupings/query_groupings_bloc.dart'
    as _i14;
import '../../application/blocs/query_joins/query_joins_bloc.dart' as _i15;
import '../../application/blocs/query_orders/query_orders_bloc.dart' as _i16;
import '../../application/blocs/query_settings/query_settings_bloc.dart'
    as _i17;
import '../../application/blocs/query_sources/query_sources_bloc.dart' as _i18;
import '../../application/blocs/query_tables/query_tables_bloc.dart' as _i19;
import '../../application/blocs/query_wizard/query_wizard_bloc.dart' as _i20;
import '../../application/services/query_table_service.dart' as _i4;
import '../clients/design_time_query_wizard_client.dart' as _i6;
import '../clients/fake_query_wizard_api_client.dart' as _i7;
import '../repositories/query_wizard_repository.dart' as _i8;

const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IQueryTableService>(() => _i4.QueryTableService(
      tablesBloc: get<_i5.QueryTablesBloc>(),
      fieldsBloc: get<_i5.QueryFieldsBloc>(),
      joinsBloc: get<_i5.QueryJoinsBloc>(),
      aggregatesBloc: get<_i5.QueryAggregatesBloc>(),
      groupingsBloc: get<_i5.QueryGroupingsBloc>(),
      conditionsBloc: get<_i5.QueryConditionsBloc>(),
      ordersBloc: get<_i5.QueryOrdersBloc>()));
  gh.lazySingleton<_i3.IQueryWizardClient>(
      () => _i6.DesignTimeQueryWizardClient(),
      registerFor: {_dev});
  gh.lazySingleton<_i3.IQueryWizardClient>(() => _i7.FakeQueryWizardApiClient(),
      registerFor: {_test});
  gh.lazySingleton<_i3.IQueryWizardRepository>(() => _i8.QueryWizardRepository(
      queryWizardClient: get<_i3.IQueryWizardClient>()));
  gh.lazySingleton<_i9.QueriesBloc>(() => _i9.QueriesBloc());
  gh.lazySingleton<_i10.QueryAggregatesBloc>(() => _i10.QueryAggregatesBloc());
  gh.lazySingleton<_i11.QueryBatchesBloc>(() => _i11.QueryBatchesBloc());
  gh.lazySingleton<_i12.QueryConditionsBloc>(() => _i12.QueryConditionsBloc());
  gh.lazySingleton<_i13.QueryFieldsBloc>(() => _i13.QueryFieldsBloc());
  gh.lazySingleton<_i14.QueryGroupingsBloc>(() => _i14.QueryGroupingsBloc());
  gh.lazySingleton<_i15.QueryJoinsBloc>(() => _i15.QueryJoinsBloc());
  gh.lazySingleton<_i16.QueryOrdersBloc>(() => _i16.QueryOrdersBloc());
  gh.lazySingleton<_i17.QuerySettingsBloc>(() => _i17.QuerySettingsBloc());
  gh.lazySingleton<_i18.QuerySourcesBloc>(() => _i18.QuerySourcesBloc(
      queryWizardRepository: get<_i3.IQueryWizardRepository>()));
  gh.lazySingleton<_i19.QueryTablesBloc>(() => _i19.QueryTablesBloc());
  gh.lazySingleton<_i20.QueryWizardBloc>(() => _i20.QueryWizardBloc(
      sourcesBloc: get<_i5.QuerySourcesBloc>(),
      tablesBloc: get<_i5.QueryTablesBloc>(),
      fieldsBloc: get<_i5.QueryFieldsBloc>(),
      joinsBloc: get<_i5.QueryJoinsBloc>(),
      aggregatesBloc: get<_i5.QueryAggregatesBloc>(),
      groupingsBloc: get<_i5.QueryGroupingsBloc>(),
      queriesBloc: get<_i5.QueriesBloc>(),
      conditionsBloc: get<_i5.QueryConditionsBloc>(),
      batchesBloc: get<_i5.QueryBatchesBloc>(),
      ordersBloc: get<_i5.QueryOrdersBloc>(),
      queryWizardRepository: get<_i3.IQueryWizardRepository>()));
  return get;
}
