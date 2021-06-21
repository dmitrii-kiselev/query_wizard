// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_aggregate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryAggregateTearOff {
  const _$QueryAggregateTearOff();

  _QueryAggregate call({required String field, required String function}) {
    return _QueryAggregate(
      field: field,
      function: function,
    );
  }
}

/// @nodoc
const $QueryAggregate = _$QueryAggregateTearOff();

/// @nodoc
mixin _$QueryAggregate {
  String get field => throw _privateConstructorUsedError;
  String get function => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryAggregateCopyWith<QueryAggregate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryAggregateCopyWith<$Res> {
  factory $QueryAggregateCopyWith(
          QueryAggregate value, $Res Function(QueryAggregate) then) =
      _$QueryAggregateCopyWithImpl<$Res>;
  $Res call({String field, String function});
}

/// @nodoc
class _$QueryAggregateCopyWithImpl<$Res>
    implements $QueryAggregateCopyWith<$Res> {
  _$QueryAggregateCopyWithImpl(this._value, this._then);

  final QueryAggregate _value;
  // ignore: unused_field
  final $Res Function(QueryAggregate) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? function = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      function: function == freezed
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$QueryAggregateCopyWith<$Res>
    implements $QueryAggregateCopyWith<$Res> {
  factory _$QueryAggregateCopyWith(
          _QueryAggregate value, $Res Function(_QueryAggregate) then) =
      __$QueryAggregateCopyWithImpl<$Res>;
  @override
  $Res call({String field, String function});
}

/// @nodoc
class __$QueryAggregateCopyWithImpl<$Res>
    extends _$QueryAggregateCopyWithImpl<$Res>
    implements _$QueryAggregateCopyWith<$Res> {
  __$QueryAggregateCopyWithImpl(
      _QueryAggregate _value, $Res Function(_QueryAggregate) _then)
      : super(_value, (v) => _then(v as _QueryAggregate));

  @override
  _QueryAggregate get _value => super._value as _QueryAggregate;

  @override
  $Res call({
    Object? field = freezed,
    Object? function = freezed,
  }) {
    return _then(_QueryAggregate(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      function: function == freezed
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QueryAggregate
    with DiagnosticableTreeMixin
    implements _QueryAggregate {
  const _$_QueryAggregate({required this.field, required this.function});

  @override
  final String field;
  @override
  final String function;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryAggregate(field: $field, function: $function)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryAggregate'))
      ..add(DiagnosticsProperty('field', field))
      ..add(DiagnosticsProperty('function', function));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryAggregate &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.function, function) ||
                const DeepCollectionEquality()
                    .equals(other.function, function)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(function);

  @JsonKey(ignore: true)
  @override
  _$QueryAggregateCopyWith<_QueryAggregate> get copyWith =>
      __$QueryAggregateCopyWithImpl<_QueryAggregate>(this, _$identity);
}

abstract class _QueryAggregate implements QueryAggregate {
  const factory _QueryAggregate(
      {required String field, required String function}) = _$_QueryAggregate;

  @override
  String get field => throw _privateConstructorUsedError;
  @override
  String get function => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryAggregateCopyWith<_QueryAggregate> get copyWith =>
      throw _privateConstructorUsedError;
}
