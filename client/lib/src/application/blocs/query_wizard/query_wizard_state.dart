part of 'query_wizard_bloc.dart';

abstract class QueryWizardState extends Equatable {
  const QueryWizardState();

  @override
  List<Object> get props => [];
}

class QueryWizardInitial extends QueryWizardState {
  const QueryWizardInitial();
}

class QueryWizardLoadInProgress extends QueryWizardState {
  const QueryWizardLoadInProgress();
}

class QueryWizardLoadSuccess extends QueryWizardState {
  const QueryWizardLoadSuccess({required this.querySchema});

  final QuerySchema querySchema;

  @override
  List<Object> get props => [querySchema];
}

class QueryWizardLoadFailure extends QueryWizardState {
  const QueryWizardLoadFailure();
}
