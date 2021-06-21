import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class QueryGrouping extends Equatable {
  QueryGrouping({required this.name, required this.type});

  QueryGrouping.withElements(
      {required this.name,
      required this.type,
      required List<QueryGrouping> elements}) {
    this.elements.addAll(elements);
  }

  QueryGrouping.withElementsAndParent(
      {required this.name,
      required this.type,
      required List<QueryGrouping> elements,
      required QueryGrouping parent}) {
    this.elements.addAll(elements);

    for (final element in elements) {
      element.parent = this;
    }

    // ignore: prefer_initializing_formals
    this.parent = parent;
  }

  final String name;
  final GroupingType type;
  QueryGrouping? parent;
  final List<QueryGrouping> elements = List.empty(growable: true);

  bool get hasElements => elements.isNotEmpty;

  @override
  List<Object> get props => [name, type, parent ?? '', elements];

  @override
  String toString() {
    return name;
  }
}

enum GroupingType { grouping, groupingSet }
