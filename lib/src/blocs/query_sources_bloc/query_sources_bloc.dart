import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/repositories.dart';

class QuerySourcesBloc extends Bloc<QuerySourcesEvent, QuerySourcesState> {
  final QueryWizardRepository queryWizardRepository;

  QuerySourcesBloc({required this.queryWizardRepository})
      : super(QuerySourcesInitial());

  @override
  Stream<QuerySourcesState> mapEventToState(QuerySourcesEvent event) async* {
    if (event is QuerySourcesRequested) {
      yield QuerySourcesLoadInProgress();
      try {
        final List<DbElement> dbElements =
            await queryWizardRepository.getSources();

        yield QuerySourcesLoadSuccess(dbElements: dbElements);
      } catch (_) {
        yield QuerySourcesLoadFailure();
      }
    }
  }
}
