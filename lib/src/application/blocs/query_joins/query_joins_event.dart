part of 'query_joins_bloc.dart';

abstract class QueryJoinsEvent extends Equatable {
  const QueryJoinsEvent();
}

class QueryJoinsInitialized extends QueryJoinsEvent {
  const QueryJoinsInitialized({required this.joins});

  final List<QueryJoin> joins;

  @override
  List<Object?> get props => [joins];
}

class QueryJoinAdded extends QueryJoinsEvent {
  const QueryJoinAdded({required this.join});

  final QueryJoin join;

  @override
  List<Object?> get props => [join];
}

class QueryJoinUpdated extends QueryJoinsEvent {
  const QueryJoinUpdated({required this.join});

  final QueryJoin join;

  @override
  List<Object?> get props => [join];
}

class QueryJoinCopied extends QueryJoinsEvent {
  const QueryJoinCopied({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryJoinDeleted extends QueryJoinsEvent {
  const QueryJoinDeleted({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryJoinOrderChanged extends QueryJoinsEvent {
  const QueryJoinOrderChanged({
    required this.oldIndex,
    required this.newIndex,
  });

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
