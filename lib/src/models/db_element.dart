import 'package:equatable/equatable.dart';

enum DbNodeType { table, column }

// ignore: must_be_immutable
class DbElement extends Equatable {
  final String name;
  String? alias;
  final DbNodeType nodeType;
  DbElement? parent;
  final List<DbElement> elements = List.empty(growable: true);

  DbElement({required this.name, required this.nodeType});

  DbElement.withElements(
      {required this.name,
      required this.nodeType,
      required List<DbElement> elements}) {
    this.elements.addAll(elements);
  }

  DbElement.withElementsAndParent(
      {required this.name,
      required this.nodeType,
      required List<DbElement> elements,
      required DbElement parent}) {
    this.elements.addAll(elements);
    this.elements.forEach((element) {
      element.parent = this;
    });

    this.parent = parent;
  }

  bool get hasElements => elements.isNotEmpty;

  @override
  List<Object> get props =>
      [name, alias ?? '', nodeType, parent ?? '', elements];
}
