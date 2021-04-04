import 'package:bloc/bloc.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/repositories.dart';

class QueryWizardBloc extends Bloc<QueryWizardEvent, QueryWizardState> {
  final QueryWizardRepository queryWizardRepository;

  QueryWizardBloc({required this.queryWizardRepository})
      : super(QueryWizardInitial());

  @override
  Stream<QueryWizardState> mapEventToState(QueryWizardEvent event) async* {
    if (event is SourcesRequested) {
      yield QueryWizardLoadInProgress();
      try {
        final List<DbElement> dbElements =
            await queryWizardRepository.getSources();

        yield QueryWizardLoadSuccess(dbElements: dbElements);
      } catch (_) {
        yield QueryWizardLoadFailure();
      }
    }
  }
}
