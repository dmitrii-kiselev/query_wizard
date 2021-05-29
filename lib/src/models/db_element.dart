import 'package:equatable/equatable.dart';

enum DbNodeType { table, column }

// ignore: must_be_immutable
class DbElement extends Equatable {
  DbElement({required this.name, required this.nodeType});

  DbElement.withElements(
      {required this.name,
      this.alias,
      required this.nodeType,
      required List<DbElement> elements}) {
    this.elements.addAll(elements);

    for (var element in elements) {
      element.parent = this;
    }
  }

  DbElement.withElementsAndParent(
      {required this.name,
      this.alias,
      required this.nodeType,
      required List<DbElement> elements,
      required DbElement parent}) {
    this.elements.addAll(elements);

    for (var element in elements) {
      element.parent = this;
    }

    this.parent = parent;
  }

  final String name;
  String? alias;
  final DbNodeType nodeType;
  DbElement? parent;
  final List<DbElement> elements = List.empty(growable: true);

  bool get hasElements => elements.isNotEmpty;

  @override
  List<Object> get props =>
      [name, alias ?? '', nodeType, parent ?? '', elements];
}
