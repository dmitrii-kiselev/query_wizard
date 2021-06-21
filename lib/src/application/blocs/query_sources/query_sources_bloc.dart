import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

part 'query_sources_bloc.freezed.dart';

part 'query_sources_event.dart';

part 'query_sources_state.dart';

@lazySingleton
class QuerySourcesBloc extends Bloc<QuerySourcesEvent, QuerySourcesState> {
  final IQueryWizardRepository queryWizardRepository;

  QuerySourcesBloc({required this.queryWizardRepository})
      : super(QuerySourcesState.initial());

  @override
  Stream<QuerySourcesState> mapEventToState(QuerySourcesEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield QuerySourcesState.initial();
      },
      sourcesRequested: (e) async* {
        yield const QuerySourcesState.loadInProgress();
        try {
          final List<QueryElement> queryElements =
              await queryWizardRepository.getSources();

          yield QuerySourcesState.loadSuccess(sources: queryElements);
        } catch (_) {
          yield const QuerySourcesState.loadFailure();
        }
      },
    );
  }
}
