import 'package:equatable/equatable.dart';

enum QueryElementType { table, column }

// ignore: must_be_immutable
class QueryElement extends Equatable {
  QueryElement({required this.name, required this.type});

  QueryElement.withElements(
      {required this.name,
      this.alias,
      required this.type,
      required List<QueryElement> elements}) {
    this.elements.addAll(elements);

    for (var element in elements) {
      element.parent = this;
    }
  }

  QueryElement.withElementsAndParent(
      {required this.name,
      this.alias,
      required this.type,
      required List<QueryElement> elements,
      required QueryElement parent}) {
    this.elements.addAll(elements);

    for (var element in elements) {
      element.parent = this;
    }

    this.parent = parent;
  }

  final String name;
  String? alias;
  final QueryElementType type;
  QueryElement? parent;
  final List<QueryElement> elements = List.empty(growable: true);

  bool get hasElements => elements.isNotEmpty;

  @override
  List<Object> get props => [name, alias ?? '', type, parent ?? '', elements];
}
