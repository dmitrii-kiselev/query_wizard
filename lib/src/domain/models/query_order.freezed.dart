// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryOrderTearOff {
  const _$QueryOrderTearOff();

  _QueryOrder call({required String field, required QuerySortingType type}) {
    return _QueryOrder(
      field: field,
      type: type,
    );
  }
}

/// @nodoc
const $QueryOrder = _$QueryOrderTearOff();

/// @nodoc
mixin _$QueryOrder {
  String get field => throw _privateConstructorUsedError;
  QuerySortingType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryOrderCopyWith<QueryOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryOrderCopyWith<$Res> {
  factory $QueryOrderCopyWith(
          QueryOrder value, $Res Function(QueryOrder) then) =
      _$QueryOrderCopyWithImpl<$Res>;
  $Res call({String field, QuerySortingType type});
}

/// @nodoc
class _$QueryOrderCopyWithImpl<$Res> implements $QueryOrderCopyWith<$Res> {
  _$QueryOrderCopyWithImpl(this._value, this._then);

  final QueryOrder _value;
  // ignore: unused_field
  final $Res Function(QueryOrder) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuerySortingType,
    ));
  }
}

/// @nodoc
abstract class _$QueryOrderCopyWith<$Res> implements $QueryOrderCopyWith<$Res> {
  factory _$QueryOrderCopyWith(
          _QueryOrder value, $Res Function(_QueryOrder) then) =
      __$QueryOrderCopyWithImpl<$Res>;
  @override
  $Res call({String field, QuerySortingType type});
}

/// @nodoc
class __$QueryOrderCopyWithImpl<$Res> extends _$QueryOrderCopyWithImpl<$Res>
    implements _$QueryOrderCopyWith<$Res> {
  __$QueryOrderCopyWithImpl(
      _QueryOrder _value, $Res Function(_QueryOrder) _then)
      : super(_value, (v) => _then(v as _QueryOrder));

  @override
  _QueryOrder get _value => super._value as _QueryOrder;

  @override
  $Res call({
    Object? field = freezed,
    Object? type = freezed,
  }) {
    return _then(_QueryOrder(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuerySortingType,
    ));
  }
}

/// @nodoc

class _$_QueryOrder with DiagnosticableTreeMixin implements _QueryOrder {
  const _$_QueryOrder({required this.field, required this.type});

  @override
  final String field;
  @override
  final QuerySortingType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryOrder(field: $field, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryOrder'))
      ..add(DiagnosticsProperty('field', field))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryOrder &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$QueryOrderCopyWith<_QueryOrder> get copyWith =>
      __$QueryOrderCopyWithImpl<_QueryOrder>(this, _$identity);
}

abstract class _QueryOrder implements QueryOrder {
  const factory _QueryOrder(
      {required String field, required QuerySortingType type}) = _$_QueryOrder;

  @override
  String get field => throw _privateConstructorUsedError;
  @override
  QuerySortingType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryOrderCopyWith<_QueryOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
