import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class JoinsTabState extends Equatable {
  final List<QueryJoin> joins;

  const JoinsTabState({required this.joins});

  @override
  List<Object?> get props => [joins];
}

class JoinsInitial extends JoinsTabState {
  JoinsInitial({List<QueryJoin>? joins}) : super(joins: joins ?? []);
}

class JoinsChanged extends JoinsTabState {
  JoinsChanged({required List<QueryJoin> joins}) : super(joins: joins);
}
