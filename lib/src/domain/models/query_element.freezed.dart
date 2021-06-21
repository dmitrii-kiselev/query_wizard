// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryElementTearOff {
  const _$QueryElementTearOff();

  _QueryElement call(
      {required String name,
      String? alias,
      required QueryElementType type,
      QueryElement? parent,
      required List<QueryElement> elements}) {
    return _QueryElement(
      name: name,
      alias: alias,
      type: type,
      parent: parent,
      elements: elements,
    );
  }
}

/// @nodoc
const $QueryElement = _$QueryElementTearOff();

/// @nodoc
mixin _$QueryElement {
  String get name => throw _privateConstructorUsedError;
  String? get alias => throw _privateConstructorUsedError;
  QueryElementType get type => throw _privateConstructorUsedError;
  QueryElement? get parent => throw _privateConstructorUsedError;
  List<QueryElement> get elements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryElementCopyWith<QueryElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryElementCopyWith<$Res> {
  factory $QueryElementCopyWith(
          QueryElement value, $Res Function(QueryElement) then) =
      _$QueryElementCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String? alias,
      QueryElementType type,
      QueryElement? parent,
      List<QueryElement> elements});

  $QueryElementCopyWith<$Res>? get parent;
}

/// @nodoc
class _$QueryElementCopyWithImpl<$Res> implements $QueryElementCopyWith<$Res> {
  _$QueryElementCopyWithImpl(this._value, this._then);

  final QueryElement _value;
  // ignore: unused_field
  final $Res Function(QueryElement) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? alias = freezed,
    Object? type = freezed,
    Object? parent = freezed,
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryElementType,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as QueryElement?,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }

  @override
  $QueryElementCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $QueryElementCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value));
    });
  }
}

/// @nodoc
abstract class _$QueryElementCopyWith<$Res>
    implements $QueryElementCopyWith<$Res> {
  factory _$QueryElementCopyWith(
          _QueryElement value, $Res Function(_QueryElement) then) =
      __$QueryElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String? alias,
      QueryElementType type,
      QueryElement? parent,
      List<QueryElement> elements});

  @override
  $QueryElementCopyWith<$Res>? get parent;
}

/// @nodoc
class __$QueryElementCopyWithImpl<$Res> extends _$QueryElementCopyWithImpl<$Res>
    implements _$QueryElementCopyWith<$Res> {
  __$QueryElementCopyWithImpl(
      _QueryElement _value, $Res Function(_QueryElement) _then)
      : super(_value, (v) => _then(v as _QueryElement));

  @override
  _QueryElement get _value => super._value as _QueryElement;

  @override
  $Res call({
    Object? name = freezed,
    Object? alias = freezed,
    Object? type = freezed,
    Object? parent = freezed,
    Object? elements = freezed,
  }) {
    return _then(_QueryElement(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryElementType,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as QueryElement?,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc

class _$_QueryElement with DiagnosticableTreeMixin implements _QueryElement {
  const _$_QueryElement(
      {required this.name,
      this.alias,
      required this.type,
      this.parent,
      required this.elements});

  @override
  final String name;
  @override
  final String? alias;
  @override
  final QueryElementType type;
  @override
  final QueryElement? parent;
  @override
  final List<QueryElement> elements;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryElement(name: $name, alias: $alias, type: $type, parent: $parent, elements: $elements)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryElement'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('alias', alias))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('parent', parent))
      ..add(DiagnosticsProperty('elements', elements));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryElement &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)) &&
            (identical(other.elements, elements) ||
                const DeepCollectionEquality()
                    .equals(other.elements, elements)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(elements);

  @JsonKey(ignore: true)
  @override
  _$QueryElementCopyWith<_QueryElement> get copyWith =>
      __$QueryElementCopyWithImpl<_QueryElement>(this, _$identity);
}

abstract class _QueryElement implements QueryElement {
  const factory _QueryElement(
      {required String name,
      String? alias,
      required QueryElementType type,
      QueryElement? parent,
      required List<QueryElement> elements}) = _$_QueryElement;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get alias => throw _privateConstructorUsedError;
  @override
  QueryElementType get type => throw _privateConstructorUsedError;
  @override
  QueryElement? get parent => throw _privateConstructorUsedError;
  @override
  List<QueryElement> get elements => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryElementCopyWith<_QueryElement> get copyWith =>
      throw _privateConstructorUsedError;
}
