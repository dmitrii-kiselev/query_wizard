import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_sources_event.dart';

part 'query_sources_state.dart';

@lazySingleton
class QuerySourcesBloc extends Bloc<QuerySourcesEvent, QuerySourcesState> {
  final IQueryWizardRepository queryWizardRepository;

  QuerySourcesBloc({required this.queryWizardRepository})
      : super(QuerySourcesInitial());

  @override
  Stream<QuerySourcesState> mapEventToState(QuerySourcesEvent event) async* {
    yield QuerySourcesInitial(sources: state.sources);

    if (event is QuerySourcesInitialized) {
      yield QuerySourcesChanged(sources: state.sources);
    }

    if (event is QuerySourcesRequested) {
      yield QuerySourcesLoadInProgress();
      try {
        final List<QueryElement> queryElements =
            await queryWizardRepository.getSources();

        yield QuerySourcesLoadSuccess(sources: queryElements);
      } catch (_) {
        yield QuerySourcesLoadFailure();
      }
    }
  }
}
