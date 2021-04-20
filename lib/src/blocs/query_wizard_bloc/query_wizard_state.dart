import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryWizardState extends Equatable {
  const QueryWizardState();

  @override
  List<Object> get props => [];
}

class QueryWizardInitial extends QueryWizardState {}

class QueryWizardLoadInProgress extends QueryWizardState {}

class QueryWizardLoadSuccess extends QueryWizardState {
  final QuerySchema querySchema;

  const QueryWizardLoadSuccess({required this.querySchema});

  @override
  List<Object> get props => [querySchema];
}

class QueryWizardLoadFailure extends QueryWizardState {}
