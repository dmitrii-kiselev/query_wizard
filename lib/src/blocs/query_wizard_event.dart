import 'package:equatable/equatable.dart';

abstract class QueryWizardEvent extends Equatable {
  const QueryWizardEvent();
}

class SourcesRequested extends QueryWizardEvent {
  const SourcesRequested();

  @override
  List<Object> get props => [];
}
