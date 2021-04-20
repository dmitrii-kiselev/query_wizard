import 'package:equatable/equatable.dart';

class QueryAggregate extends Equatable {
  final String field;
  final String function;

  const QueryAggregate({required this.field, required this.function});

  @override
  List<Object?> get props => [field, function];
}
