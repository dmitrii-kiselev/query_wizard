import 'package:equatable/equatable.dart';

class QuerySorting extends Equatable {
  const QuerySorting({required this.field, required this.type});

  final String field;
  final QuerySortingType type;

  @override
  List<Object?> get props => [field, type];
}

enum QuerySortingType { ascending, descending }
