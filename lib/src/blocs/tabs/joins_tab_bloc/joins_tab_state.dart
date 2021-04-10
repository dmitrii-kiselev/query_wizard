import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class JoinsTabState extends Equatable {
  final List<Join> joins;

  const JoinsTabState({required this.joins});

  @override
  List<Object?> get props => [joins];
}

class JoinsInitial extends JoinsTabState {
  JoinsInitial({List<Join>? joins}) : super(joins: joins ?? []);
}

class JoinsChanged extends JoinsTabState {
  JoinsChanged({required List<Join> joins}) : super(joins: joins);
}
