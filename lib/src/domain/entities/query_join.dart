import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryJoin extends Equatable implements IEntity {
  const QueryJoin({
    required this.id,
    this.leftTable,
    required this.isLeftAll,
    this.rightTable,
    required this.isRightAll,
    required this.condition,
  });

  const QueryJoin.empty()
      : id = '',
        leftTable = null,
        isLeftAll = false,
        rightTable = null,
        isRightAll = false,
        condition = const QueryCondition.empty();

  @override
  final String id;
  final QueryElement? leftTable;
  final bool isLeftAll;
  final QueryElement? rightTable;
  final bool isRightAll;
  final QueryCondition condition;

  @override
  List<Object?> get props => [
        id,
        leftTable,
        isLeftAll,
        rightTable,
        isRightAll,
        condition,
      ];
}
