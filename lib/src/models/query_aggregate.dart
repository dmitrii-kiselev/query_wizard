import 'package:equatable/equatable.dart';

class QueryAggregate extends Equatable {
  const QueryAggregate({required this.field, required this.function});

  final String field;
  final String function;

  @override
  List<Object?> get props => [field, function];

  @override
  String toString() {
    return '$field $function';
  }
}
