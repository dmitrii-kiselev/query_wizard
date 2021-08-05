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
      expect(queryBatchesBloc.state.queryBatches, []);
    });

    blocTest('adds query batch when QueryBatchAdded is added',
        build: () => queryBatchesBloc,
        act: (QueryBatchesBloc bloc) {
          final queryBatch = QueryBatch.empty();
          bloc.add(QueryBatchAdded(queryBatch: queryBatch));
        },
        expect: () => [
              QueryBatchesInitial(queryBatches: [QueryBatch.empty()]),
              QueryBatchesChanged(queryBatches: [QueryBatch.empty()]),
            ]);

    blocTest('copies query batch when QueryBatchCopied is added',
        build: () => queryBatchesBloc,
        act: (QueryBatchesBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final batchAdded = QueryBatchAdded(queryBatch: queryBatch);
          const batchCopied = QueryBatchCopied(id: '');

          bloc.add(batchAdded);
          bloc.add(batchCopied);
        },
        expect: () {
          return [
            isA<QueryBatchesInitial>(),
            isA<QueryBatchesChanged>(),
            isA<QueryBatchesInitial>(),
            isA<QueryBatchesChanged>(),
          ];
        });

    blocTest('removes query batch when QueryBatchDeleted is added',
        build: () => queryBatchesBloc,
        act: (QueryBatchesBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final batchAdded = QueryBatchAdded(queryBatch: queryBatch);
          const batchDeleted = QueryBatchDeleted(id: '');

          bloc.add(batchAdded);
          bloc.add(batchDeleted);
        },
        expect: () {
          final List<QueryBatch> expectedBatches = [];

          return [
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches),
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches),
          ];
        });

    blocTest('changes query batch order when QueryBatchOrderChanged is added',
        build: () => queryBatchesBloc,
        act: (QueryBatchesBloc bloc) {
          final queryBatch = QueryBatch.empty();
          final batchAdded1 = QueryBatchAdded(queryBatch: queryBatch);
          final batchAdded2 = QueryBatchAdded(queryBatch: QueryBatch.empty());

          const batchOrderChanged = QueryBatchOrderChanged(
            newIndex: 0,
            oldIndex: 1,
          );

          bloc.add(batchAdded1);
          bloc.add(batchAdded2);
          bloc.add(batchOrderChanged);
        },
        expect: () {
          final expectedBatches = [
            QueryBatch.empty(),
            QueryBatch.empty(),
          ];

          return [
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches),
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches),
            QueryBatchesInitial(queryBatches: expectedBatches),
            QueryBatchesChanged(queryBatches: expectedBatches),
          ];
        });
  });
}
