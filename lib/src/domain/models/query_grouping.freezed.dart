// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_grouping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryGroupingTearOff {
  const _$QueryGroupingTearOff();

  _QueryGrouping call(
      {required String name,
      required QueryGroupingType type,
      QueryGrouping? parent,
      required List<QueryGrouping> elements}) {
    return _QueryGrouping(
      name: name,
      type: type,
      parent: parent,
      elements: elements,
    );
  }
}

/// @nodoc
const $QueryGrouping = _$QueryGroupingTearOff();

/// @nodoc
mixin _$QueryGrouping {
  String get name => throw _privateConstructorUsedError;
  QueryGroupingType get type => throw _privateConstructorUsedError;
  QueryGrouping? get parent => throw _privateConstructorUsedError;
  List<QueryGrouping> get elements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryGroupingCopyWith<QueryGrouping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryGroupingCopyWith<$Res> {
  factory $QueryGroupingCopyWith(
          QueryGrouping value, $Res Function(QueryGrouping) then) =
      _$QueryGroupingCopyWithImpl<$Res>;
  $Res call(
      {String name,
      QueryGroupingType type,
      QueryGrouping? parent,
      List<QueryGrouping> elements});

  $QueryGroupingCopyWith<$Res>? get parent;
}

/// @nodoc
class _$QueryGroupingCopyWithImpl<$Res>
    implements $QueryGroupingCopyWith<$Res> {
  _$QueryGroupingCopyWithImpl(this._value, this._then);

  final QueryGrouping _value;
  // ignore: unused_field
  final $Res Function(QueryGrouping) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? parent = freezed,
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryGroupingType,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as QueryGrouping?,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<QueryGrouping>,
    ));
  }

  @override
  $QueryGroupingCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $QueryGroupingCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value));
    });
  }
}

/// @nodoc
abstract class _$QueryGroupingCopyWith<$Res>
    implements $QueryGroupingCopyWith<$Res> {
  factory _$QueryGroupingCopyWith(
          _QueryGrouping value, $Res Function(_QueryGrouping) then) =
      __$QueryGroupingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      QueryGroupingType type,
      QueryGrouping? parent,
      List<QueryGrouping> elements});

  @override
  $QueryGroupingCopyWith<$Res>? get parent;
}

/// @nodoc
class __$QueryGroupingCopyWithImpl<$Res>
    extends _$QueryGroupingCopyWithImpl<$Res>
    implements _$QueryGroupingCopyWith<$Res> {
  __$QueryGroupingCopyWithImpl(
      _QueryGrouping _value, $Res Function(_QueryGrouping) _then)
      : super(_value, (v) => _then(v as _QueryGrouping));

  @override
  _QueryGrouping get _value => super._value as _QueryGrouping;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? parent = freezed,
    Object? elements = freezed,
  }) {
    return _then(_QueryGrouping(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QueryGroupingType,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as QueryGrouping?,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<QueryGrouping>,
    ));
  }
}

/// @nodoc

class _$_QueryGrouping with DiagnosticableTreeMixin implements _QueryGrouping {
  const _$_QueryGrouping(
      {required this.name,
      required this.type,
      this.parent,
      required this.elements});

  @override
  final String name;
  @override
  final QueryGroupingType type;
  @override
  final QueryGrouping? parent;
  @override
  final List<QueryGrouping> elements;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryGrouping(name: $name, type: $type, parent: $parent, elements: $elements)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryGrouping'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('parent', parent))
      ..add(DiagnosticsProperty('elements', elements));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryGrouping &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(elements);

  @JsonKey(ignore: true)
  @override
  _$QueryGroupingCopyWith<_QueryGrouping> get copyWith =>
      __$QueryGroupingCopyWithImpl<_QueryGrouping>(this, _$identity);
}

abstract class _QueryGrouping implements QueryGrouping {
  const factory _QueryGrouping(
      {required String name,
      required QueryGroupingType type,
      QueryGrouping? parent,
      required List<QueryGrouping> elements}) = _$_QueryGrouping;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  QueryGroupingType get type => throw _privateConstructorUsedError;
  @override
  QueryGrouping? get parent => throw _privateConstructorUsedError;
  @override
  List<QueryGrouping> get elements => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryGroupingCopyWith<_QueryGrouping> get copyWith =>
      throw _privateConstructorUsedError;
}
