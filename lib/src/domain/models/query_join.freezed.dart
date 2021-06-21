// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_join.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryJoinTearOff {
  const _$QueryJoinTearOff();

  _QueryJoin call(
      {required String leftTable,
      required bool isLeftAll,
      required String rightTable,
      required bool isRightAll,
      required QueryCondition condition}) {
    return _QueryJoin(
      leftTable: leftTable,
      isLeftAll: isLeftAll,
      rightTable: rightTable,
      isRightAll: isRightAll,
      condition: condition,
    );
  }
}

/// @nodoc
const $QueryJoin = _$QueryJoinTearOff();

/// @nodoc
mixin _$QueryJoin {
  String get leftTable => throw _privateConstructorUsedError;
  bool get isLeftAll => throw _privateConstructorUsedError;
  String get rightTable => throw _privateConstructorUsedError;
  bool get isRightAll => throw _privateConstructorUsedError;
  QueryCondition get condition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryJoinCopyWith<QueryJoin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryJoinCopyWith<$Res> {
  factory $QueryJoinCopyWith(QueryJoin value, $Res Function(QueryJoin) then) =
      _$QueryJoinCopyWithImpl<$Res>;
  $Res call(
      {String leftTable,
      bool isLeftAll,
      String rightTable,
      bool isRightAll,
      QueryCondition condition});

  $QueryConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$QueryJoinCopyWithImpl<$Res> implements $QueryJoinCopyWith<$Res> {
  _$QueryJoinCopyWithImpl(this._value, this._then);

  final QueryJoin _value;
  // ignore: unused_field
  final $Res Function(QueryJoin) _then;

  @override
  $Res call({
    Object? leftTable = freezed,
    Object? isLeftAll = freezed,
    Object? rightTable = freezed,
    Object? isRightAll = freezed,
    Object? condition = freezed,
  }) {
    return _then(_value.copyWith(
      leftTable: leftTable == freezed
          ? _value.leftTable
          : leftTable // ignore: cast_nullable_to_non_nullable
              as String,
      isLeftAll: isLeftAll == freezed
          ? _value.isLeftAll
          : isLeftAll // ignore: cast_nullable_to_non_nullable
              as bool,
      rightTable: rightTable == freezed
          ? _value.rightTable
          : rightTable // ignore: cast_nullable_to_non_nullable
              as String,
      isRightAll: isRightAll == freezed
          ? _value.isRightAll
          : isRightAll // ignore: cast_nullable_to_non_nullable
              as bool,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as QueryCondition,
    ));
  }

  @override
  $QueryConditionCopyWith<$Res> get condition {
    return $QueryConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value));
    });
  }
}

/// @nodoc
abstract class _$QueryJoinCopyWith<$Res> implements $QueryJoinCopyWith<$Res> {
  factory _$QueryJoinCopyWith(
          _QueryJoin value, $Res Function(_QueryJoin) then) =
      __$QueryJoinCopyWithImpl<$Res>;
  @override
  $Res call(
      {String leftTable,
      bool isLeftAll,
      String rightTable,
      bool isRightAll,
      QueryCondition condition});

  @override
  $QueryConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$QueryJoinCopyWithImpl<$Res> extends _$QueryJoinCopyWithImpl<$Res>
    implements _$QueryJoinCopyWith<$Res> {
  __$QueryJoinCopyWithImpl(_QueryJoin _value, $Res Function(_QueryJoin) _then)
      : super(_value, (v) => _then(v as _QueryJoin));

  @override
  _QueryJoin get _value => super._value as _QueryJoin;

  @override
  $Res call({
    Object? leftTable = freezed,
    Object? isLeftAll = freezed,
    Object? rightTable = freezed,
    Object? isRightAll = freezed,
    Object? condition = freezed,
  }) {
    return _then(_QueryJoin(
      leftTable: leftTable == freezed
          ? _value.leftTable
          : leftTable // ignore: cast_nullable_to_non_nullable
              as String,
      isLeftAll: isLeftAll == freezed
          ? _value.isLeftAll
          : isLeftAll // ignore: cast_nullable_to_non_nullable
              as bool,
      rightTable: rightTable == freezed
          ? _value.rightTable
          : rightTable // ignore: cast_nullable_to_non_nullable
              as String,
      isRightAll: isRightAll == freezed
          ? _value.isRightAll
          : isRightAll // ignore: cast_nullable_to_non_nullable
              as bool,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as QueryCondition,
    ));
  }
}

/// @nodoc

class _$_QueryJoin with DiagnosticableTreeMixin implements _QueryJoin {
  const _$_QueryJoin(
      {required this.leftTable,
      required this.isLeftAll,
      required this.rightTable,
      required this.isRightAll,
      required this.condition});

  @override
  final String leftTable;
  @override
  final bool isLeftAll;
  @override
  final String rightTable;
  @override
  final bool isRightAll;
  @override
  final QueryCondition condition;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryJoin'))
      ..add(DiagnosticsProperty('leftTable', leftTable))
      ..add(DiagnosticsProperty('isLeftAll', isLeftAll))
      ..add(DiagnosticsProperty('rightTable', rightTable))
      ..add(DiagnosticsProperty('isRightAll', isRightAll))
      ..add(DiagnosticsProperty('condition', condition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryJoin &&
            (identical(other.leftTable, leftTable) ||
                const DeepCollectionEquality()
                    .equals(other.leftTable, leftTable)) &&
            (identical(other.isLeftAll, isLeftAll) ||
                const DeepCollectionEquality()
                    .equals(other.isLeftAll, isLeftAll)) &&
            (identical(other.rightTable, rightTable) ||
                const DeepCollectionEquality()
                    .equals(other.rightTable, rightTable)) &&
            (identical(other.isRightAll, isRightAll) ||
                const DeepCollectionEquality()
                    .equals(other.isRightAll, isRightAll)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(leftTable) ^
      const DeepCollectionEquality().hash(isLeftAll) ^
      const DeepCollectionEquality().hash(rightTable) ^
      const DeepCollectionEquality().hash(isRightAll) ^
      const DeepCollectionEquality().hash(condition);

  @JsonKey(ignore: true)
  @override
  _$QueryJoinCopyWith<_QueryJoin> get copyWith =>
      __$QueryJoinCopyWithImpl<_QueryJoin>(this, _$identity);
}

abstract class _QueryJoin implements QueryJoin {
  const factory _QueryJoin(
      {required String leftTable,
      required bool isLeftAll,
      required String rightTable,
      required bool isRightAll,
      required QueryCondition condition}) = _$_QueryJoin;

  @override
  String get leftTable => throw _privateConstructorUsedError;
  @override
  bool get isLeftAll => throw _privateConstructorUsedError;
  @override
  String get rightTable => throw _privateConstructorUsedError;
  @override
  bool get isRightAll => throw _privateConstructorUsedError;
  @override
  QueryCondition get condition => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryJoinCopyWith<_QueryJoin> get copyWith =>
      throw _privateConstructorUsedError;
}
