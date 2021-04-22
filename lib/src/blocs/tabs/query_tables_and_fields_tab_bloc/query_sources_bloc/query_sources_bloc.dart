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
    yield QuerySourcesInitial(sources: state.sources);

    if (event is QuerySourcesInitialized) {
      state.sources.clear();
      state.sources.addAll(event.sources);

      yield QuerySourcesChanged(sources: state.sources);
    }

    if (event is QuerySourcesRequested) {
      yield QuerySourcesLoadInProgress();
      try {
        final List<DbElement> dbElements =
            await queryWizardRepository.getSources();

        yield QuerySourcesLoadSuccess(sources: dbElements);
      } catch (_) {
        yield QuerySourcesLoadFailure();
      }
    }
  }
}
