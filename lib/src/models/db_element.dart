import 'package:equatable/equatable.dart';

enum DbNodeType { table, column }

// ignore: must_be_immutable
class DbElement extends Equatable {
  final String name;
  String alias;
  final DbNodeType nodeType;
  DbElement parent;
  final List<DbElement> elements = List.empty();

  DbElement({this.name, this.nodeType});

  DbElement.withElements({this.name, this.nodeType, List<DbElement> elements}) {
    this.elements.addAll(elements);
  }

  DbElement.withElementsAndParent(
      {this.name, this.nodeType, List<DbElement> elements, DbElement parent}) {
    this.elements.addAll(elements);
    this.elements.forEach((element) {
      element.parent = this;
    });

    this.parent = parent;
  }

  bool get hasElements => elements.isNotEmpty;

  @override
  List<Object> get props => [name, alias, nodeType, parent, elements];
}
