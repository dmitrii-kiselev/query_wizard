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
  final List<DbElement> dbElements;

  const QueryWizardLoadSuccess({this.dbElements});

  @override
  List<Object> get props => [dbElements];
}

class QueryWizardLoadFailure extends QueryWizardState {}
