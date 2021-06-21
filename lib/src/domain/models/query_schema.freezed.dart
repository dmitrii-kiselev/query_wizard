// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuerySchemaTearOff {
  const _$QuerySchemaTearOff();

  _QuerySchema call({required List<QueryBatch> queryBatches}) {
    return _QuerySchema(
      queryBatches: queryBatches,
    );
  }
}

/// @nodoc
const $QuerySchema = _$QuerySchemaTearOff();

/// @nodoc
mixin _$QuerySchema {
  List<QueryBatch> get queryBatches => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuerySchemaCopyWith<QuerySchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuerySchemaCopyWith<$Res> {
  factory $QuerySchemaCopyWith(
          QuerySchema value, $Res Function(QuerySchema) then) =
      _$QuerySchemaCopyWithImpl<$Res>;
  $Res call({List<QueryBatch> queryBatches});
}

/// @nodoc
class _$QuerySchemaCopyWithImpl<$Res> implements $QuerySchemaCopyWith<$Res> {
  _$QuerySchemaCopyWithImpl(this._value, this._then);

  final QuerySchema _value;
  // ignore: unused_field
  final $Res Function(QuerySchema) _then;

  @override
  $Res call({
    Object? queryBatches = freezed,
  }) {
    return _then(_value.copyWith(
      queryBatches: queryBatches == freezed
          ? _value.queryBatches
          : queryBatches // ignore: cast_nullable_to_non_nullable
              as List<QueryBatch>,
    ));
  }
}

/// @nodoc
abstract class _$QuerySchemaCopyWith<$Res>
    implements $QuerySchemaCopyWith<$Res> {
  factory _$QuerySchemaCopyWith(
          _QuerySchema value, $Res Function(_QuerySchema) then) =
      __$QuerySchemaCopyWithImpl<$Res>;
  @override
  $Res call({List<QueryBatch> queryBatches});
}

/// @nodoc
class __$QuerySchemaCopyWithImpl<$Res> extends _$QuerySchemaCopyWithImpl<$Res>
    implements _$QuerySchemaCopyWith<$Res> {
  __$QuerySchemaCopyWithImpl(
      _QuerySchema _value, $Res Function(_QuerySchema) _then)
      : super(_value, (v) => _then(v as _QuerySchema));

  @override
  _QuerySchema get _value => super._value as _QuerySchema;

  @override
  $Res call({
    Object? queryBatches = freezed,
  }) {
    return _then(_QuerySchema(
      queryBatches: queryBatches == freezed
          ? _value.queryBatches
          : queryBatches // ignore: cast_nullable_to_non_nullable
              as List<QueryBatch>,
    ));
  }
}

/// @nodoc

class _$_QuerySchema with DiagnosticableTreeMixin implements _QuerySchema {
  const _$_QuerySchema({required this.queryBatches});

  @override
  final List<QueryBatch> queryBatches;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySchema(queryBatches: $queryBatches)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySchema'))
      ..add(DiagnosticsProperty('queryBatches', queryBatches));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuerySchema &&
            (identical(other.queryBatches, queryBatches) ||
                const DeepCollectionEquality()
                    .equals(other.queryBatches, queryBatches)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryBatches);

  @JsonKey(ignore: true)
  @override
  _$QuerySchemaCopyWith<_QuerySchema> get copyWith =>
      __$QuerySchemaCopyWithImpl<_QuerySchema>(this, _$identity);
}

abstract class _QuerySchema implements QuerySchema {
  const factory _QuerySchema({required List<QueryBatch> queryBatches}) =
      _$_QuerySchema;

  @override
  List<QueryBatch> get queryBatches => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuerySchemaCopyWith<_QuerySchema> get copyWith =>
      throw _privateConstructorUsedError;
}
