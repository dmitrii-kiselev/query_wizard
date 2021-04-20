import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class QueryGrouping extends Equatable {
  final String name;
  final GroupingType type;
  QueryGrouping? parent;
  final List<QueryGrouping> elements = List.empty(growable: true);

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

    for (var element in elements) {
      element.parent = this;
    }

    this.parent = parent;
  }

  bool get hasElements => elements.isNotEmpty;

  @override
  List<Object> get props => [name, type, parent ?? '', elements];
}

enum GroupingType { grouping, groupingSet }
