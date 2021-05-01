import 'package:equatable/equatable.dart';

abstract class QueryWizardEvent extends Equatable {
  const QueryWizardEvent();

  @override
  List<Object> get props => [];
}

class QuerySchemaRequested extends QueryWizardEvent {
  final String query;

  const QuerySchemaRequested(this.query);

  @override
  List<Object> get props => [query];
}
