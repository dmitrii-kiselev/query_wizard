import 'package:equatable/equatable.dart';

class QuerySorting extends Equatable {
  final String field;
  final QuerySortingType type;

  const QuerySorting({required this.field, required this.type});

  @override
  List<Object?> get props => [field, type];
}

enum QuerySortingType { ascending, descending }
