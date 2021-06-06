import 'package:equatable/equatable.dart';

class QueryOrder extends Equatable {
  const QueryOrder({required this.field, required this.type});

  final String field;
  final QuerySortingType type;

  @override
  List<Object?> get props => [field, type];

  @override
  String toString() => '$field $type';
}

enum QuerySortingType { ascending, descending }
