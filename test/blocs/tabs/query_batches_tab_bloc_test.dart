import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

void main() {
  group('QueryBatchTabBloc', () {
    late QueryBatchTabBloc queryBatchesTabBloc;

    setUp(() {
      queryBatchesTabBloc = QueryBatchTabBloc(
          initialState: QueryBatchesInitial(queryBatches: []));
    });

    test('initial state is empty', () {
      expect(queryBatchesTabBloc.state.queryBatches, []);
    });

    blocTest('adds query batch when QueryBatchAdded is added',
        build: () => queryBatchesTabBloc,
        act: (QueryBatchTabBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final event = QueryBatchAdded(queryBatch: queryBatch);

          bloc.add(event);
        },
        expect: () => [
              QueryBatchesInitial(queryBatches: [QueryBatch.empty()]),
              QueryBatchesChanged(queryBatches: [QueryBatch.empty()])
            ]);

    blocTest('copies query batch when QueryBatchCopied is added',
        build: () => queryBatchesTabBloc,
        act: (QueryBatchTabBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final batchAdded = QueryBatchAdded(queryBatch: queryBatch);
          final batchCopied = QueryBatchCopied(queryBatch: queryBatch);

          bloc.add(batchAdded);
          bloc.add(batchCopied);
        },
        expect: () {
          final expectedBatches = [QueryBatch.empty(), QueryBatch.empty()];

          return [
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches),
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches)
          ];
        });

    blocTest('removes query batch when QueryBatchRemoved is added',
        build: () => queryBatchesTabBloc,
        act: (QueryBatchTabBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final batchAdded = QueryBatchAdded(queryBatch: queryBatch);
          final batchRemoved = QueryBatchRemoved(index: 0);

          bloc.add(batchAdded);
          bloc.add(batchRemoved);
        },
        expect: () {
          final List<QueryBatch> expectedBatches = [];

          return [
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches),
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches)
          ];
        });

    blocTest('changes query batch order when QueryBatchOrderChanged is added',
        build: () => queryBatchesTabBloc,
        act: (QueryBatchTabBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final batchAdded1 = QueryBatchAdded(queryBatch: queryBatch);
          final batchAdded2 = QueryBatchAdded(queryBatch: QueryBatch.empty());
          final batchOrderChanged =
              QueryBatchOrderChanged(newIndex: 0, oldIndex: 1);

          bloc.add(batchAdded1);
          bloc.add(batchAdded2);
          bloc.add(batchOrderChanged);
        },
        expect: () {
          final expectedBatches = [QueryBatch.empty(), QueryBatch.empty()];

          return [
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches),
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches),
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches)
          ];
        });
  });
}
