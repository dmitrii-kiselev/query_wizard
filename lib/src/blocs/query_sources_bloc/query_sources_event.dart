import 'package:equatable/equatable.dart';

abstract class QuerySourcesEvent extends Equatable {
  const QuerySourcesEvent();
}

class QuerySourcesRequested extends QuerySourcesEvent {
  const QuerySourcesRequested();

  @override
  List<Object> get props => [];
}
