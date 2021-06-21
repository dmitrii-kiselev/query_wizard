part of 'query_wizard_bloc.dart';

@freezed
class QueryWizardEvent with _$QueryWizardEvent {
  const factory QueryWizardEvent.initialized() = _Initialized;

  const factory QueryWizardEvent.querySchemaRequested({
    required String query,
  }) = _QuerySchemaRequested;
}
