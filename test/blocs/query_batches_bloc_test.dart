import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

void main() {
  group('QueryBatchesBloc', () {
    late QueryBatchesBloc queryBatchesBloc;

    setUp(() {
      queryBatchesBloc = QueryBatchesBloc();
    });

    test('initial state is empty', () {
      expect(queryBatchesBloc.state.batches, []);
    });

    blocTest(
      'adds query batch when QueryBatchAdded is added',
      build: () => queryBatchesBloc,
      act: (QueryBatchesBloc bloc) {
        final queryBatch = QueryBatch.empty();
        bloc.add(
          QueryBatchesEvent.batchAdded(batch: queryBatch),
        );
      },
      expect: () => [
        QueryBatchesState(
          batches: [
            QueryBatch.empty(),
          ],
        )
      ],
    );

    blocTest('copies query batch when QueryBatchCopied is added',
        build: () => queryBatchesBloc,
        act: (QueryBatchesBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final batchAdded = QueryBatchesEvent.batchAdded(batch: queryBatch);
          final batchCopied = QueryBatchesEvent.batchCopied(batch: queryBatch);

          bloc.add(batchAdded);
          bloc.add(batchCopied);
        },
        expect: () {
          final expectedBatches = [QueryBatch.empty(), QueryBatch.empty()];

          return [
            QueryBatchesState(batches: expectedBatches),
          ];
        });

    blocTest('removes query batch when QueryBatchDeleted is added',
        build: () => queryBatchesBloc,
        act: (QueryBatchesBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final batchAdded = QueryBatchesEvent.batchAdded(batch: queryBatch);
          const batchDeleted = QueryBatchesEvent.batchDeleted(index: 0);

          bloc.add(batchAdded);
          bloc.add(batchDeleted);
        },
        expect: () {
          final List<QueryBatch> expectedBatches = [];

          return [QueryBatchesState(batches: expectedBatches)];
        });

    blocTest('changes query batch order when QueryBatchOrderChanged is added',
        build: () => queryBatchesBloc,
        act: (QueryBatchesBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final batchAdded1 = QueryBatchesEvent.batchAdded(batch: queryBatch);
          final batchAdded2 = QueryBatchesEvent.batchAdded(batch: queryBatch);
          const batchOrderChanged = QueryBatchesEvent.batchOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(batchAdded1);
          bloc.add(batchAdded2);
          bloc.add(batchOrderChanged);
        },
        expect: () {
          final expectedBatches = [QueryBatch.empty(), QueryBatch.empty()];

          return [
            QueryBatchesState(batches: expectedBatches),
          ];
        });
  });
}
