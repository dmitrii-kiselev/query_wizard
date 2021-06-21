part of 'query_wizard_bloc.dart';

@freezed
class QueryWizardState with _$QueryWizardState {
  const factory QueryWizardState.initial() = _Initial;

  const factory QueryWizardState.loadInProgress() = _LoadInProgress;

  const factory QueryWizardState.loadSuccess({
    required QuerySchema querySchema,
  }) = _LoadSuccess;

  const factory QueryWizardState.loadFailure() = _LoadFailure;
}
