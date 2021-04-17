import 'package:equatable/equatable.dart';
import 'package:query_wizard/models.dart';

class QuerySchema extends Equatable {
  final List<QueryBatch> queryBatches;

  const QuerySchema({required this.queryBatches});

  @override
  List<Object?> get props => [queryBatches];
}
