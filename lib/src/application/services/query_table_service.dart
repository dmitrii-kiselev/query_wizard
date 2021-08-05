import 'package:injectable/injectable.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

@LazySingleton(as: IQueryTableService)
class QueryTableService implements IQueryTableService {
  QueryTableService({
    required this.tablesBloc,
    required this.fieldsBloc,
    required this.joinsBloc,
    required this.aggregatesBloc,
    required this.groupingsBloc,
    required this.conditionsBloc,
    required this.ordersBloc,
  });

  final QueryTablesBloc tablesBloc;
  final QueryFieldsBloc fieldsBloc;
  final QueryJoinsBloc joinsBloc;
  final QueryAggregatesBloc aggregatesBloc;
  final QueryGroupingsBloc groupingsBloc;
  final QueryConditionsBloc conditionsBloc;
  final QueryOrdersBloc ordersBloc;

  @override
  void removeTable(String id) {
    tablesBloc.add(QueryTableDeleted(id: id));
    fieldsBloc.add(QueryFieldsRemoveByTableId(id: id));
    joinsBloc.add(QueryJoinsRemoveByTableId(id: id));
    aggregatesBloc.add(QueryAggregatesRemoveByTableId(id: id));
    groupingsBloc.add(QueryGroupingsRemoveByTableId(id: id));
    conditionsBloc.add(QueryConditionsRemoveByTableId(id: id));
    ordersBloc.add(QueryOrdersRemoveByTableId(id: id));
  }
}
