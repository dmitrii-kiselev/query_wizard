// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryConditionTearOff {
  const _$QueryConditionTearOff();

  _QueryCondition call(
      {required bool isCustom,
      required String leftField,
      required String logicalCompareType,
      required String rightField,
      required String customCondition}) {
    return _QueryCondition(
      isCustom: isCustom,
      leftField: leftField,
      logicalCompareType: logicalCompareType,
      rightField: rightField,
      customCondition: customCondition,
    );
  }
}

/// @nodoc
const $QueryCondition = _$QueryConditionTearOff();

/// @nodoc
mixin _$QueryCondition {
  bool get isCustom => throw _privateConstructorUsedError;
  String get leftField => throw _privateConstructorUsedError;
  String get logicalCompareType => throw _privateConstructorUsedError;
  String get rightField => throw _privateConstructorUsedError;
  String get customCondition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryConditionCopyWith<QueryCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryConditionCopyWith<$Res> {
  factory $QueryConditionCopyWith(
          QueryCondition value, $Res Function(QueryCondition) then) =
      _$QueryConditionCopyWithImpl<$Res>;
  $Res call(
      {bool isCustom,
      String leftField,
      String logicalCompareType,
      String rightField,
      String customCondition});
}

/// @nodoc
class _$QueryConditionCopyWithImpl<$Res>
    implements $QueryConditionCopyWith<$Res> {
  _$QueryConditionCopyWithImpl(this._value, this._then);

  final QueryCondition _value;
  // ignore: unused_field
  final $Res Function(QueryCondition) _then;

  @override
  $Res call({
    Object? isCustom = freezed,
    Object? leftField = freezed,
    Object? logicalCompareType = freezed,
    Object? rightField = freezed,
    Object? customCondition = freezed,
  }) {
    return _then(_value.copyWith(
      isCustom: isCustom == freezed
          ? _value.isCustom
          : isCustom // ignore: cast_nullable_to_non_nullable
              as bool,
      leftField: leftField == freezed
          ? _value.leftField
          : leftField // ignore: cast_nullable_to_non_nullable
              as String,
      logicalCompareType: logicalCompareType == freezed
          ? _value.logicalCompareType
          : logicalCompareType // ignore: cast_nullable_to_non_nullable
              as String,
      rightField: rightField == freezed
          ? _value.rightField
          : rightField // ignore: cast_nullable_to_non_nullable
              as String,
      customCondition: customCondition == freezed
          ? _value.customCondition
          : customCondition // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$QueryConditionCopyWith<$Res>
    implements $QueryConditionCopyWith<$Res> {
  factory _$QueryConditionCopyWith(
          _QueryCondition value, $Res Function(_QueryCondition) then) =
      __$QueryConditionCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isCustom,
      String leftField,
      String logicalCompareType,
      String rightField,
      String customCondition});
}

/// @nodoc
class __$QueryConditionCopyWithImpl<$Res>
    extends _$QueryConditionCopyWithImpl<$Res>
    implements _$QueryConditionCopyWith<$Res> {
  __$QueryConditionCopyWithImpl(
      _QueryCondition _value, $Res Function(_QueryCondition) _then)
      : super(_value, (v) => _then(v as _QueryCondition));

  @override
  _QueryCondition get _value => super._value as _QueryCondition;

  @override
  $Res call({
    Object? isCustom = freezed,
    Object? leftField = freezed,
    Object? logicalCompareType = freezed,
    Object? rightField = freezed,
    Object? customCondition = freezed,
  }) {
    return _then(_QueryCondition(
      isCustom: isCustom == freezed
          ? _value.isCustom
          : isCustom // ignore: cast_nullable_to_non_nullable
              as bool,
      leftField: leftField == freezed
          ? _value.leftField
          : leftField // ignore: cast_nullable_to_non_nullable
              as String,
      logicalCompareType: logicalCompareType == freezed
          ? _value.logicalCompareType
          : logicalCompareType // ignore: cast_nullable_to_non_nullable
              as String,
      rightField: rightField == freezed
          ? _value.rightField
          : rightField // ignore: cast_nullable_to_non_nullable
              as String,
      customCondition: customCondition == freezed
          ? _value.customCondition
          : customCondition // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QueryCondition
    with DiagnosticableTreeMixin
    implements _QueryCondition {
  const _$_QueryCondition(
      {required this.isCustom,
      required this.leftField,
      required this.logicalCompareType,
      required this.rightField,
      required this.customCondition});

  @override
  final bool isCustom;
  @override
  final String leftField;
  @override
  final String logicalCompareType;
  @override
  final String rightField;
  @override
  final String customCondition;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryCondition'))
      ..add(DiagnosticsProperty('isCustom', isCustom))
      ..add(DiagnosticsProperty('leftField', leftField))
      ..add(DiagnosticsProperty('logicalCompareType', logicalCompareType))
      ..add(DiagnosticsProperty('rightField', rightField))
      ..add(DiagnosticsProperty('customCondition', customCondition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryCondition &&
            (identical(other.isCustom, isCustom) ||
                const DeepCollectionEquality()
                    .equals(other.isCustom, isCustom)) &&
            (identical(other.leftField, leftField) ||
                const DeepCollectionEquality()
                    .equals(other.leftField, leftField)) &&
            (identical(other.logicalCompareType, logicalCompareType) ||
                const DeepCollectionEquality()
                    .equals(other.logicalCompareType, logicalCompareType)) &&
            (identical(other.rightField, rightField) ||
                const DeepCollectionEquality()
                    .equals(other.rightField, rightField)) &&
            (identical(other.customCondition, customCondition) ||
                const DeepCollectionEquality()
                    .equals(other.customCondition, customCondition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCustom) ^
      const DeepCollectionEquality().hash(leftField) ^
      const DeepCollectionEquality().hash(logicalCompareType) ^
      const DeepCollectionEquality().hash(rightField) ^
      const DeepCollectionEquality().hash(customCondition);

  @JsonKey(ignore: true)
  @override
  _$QueryConditionCopyWith<_QueryCondition> get copyWith =>
      __$QueryConditionCopyWithImpl<_QueryCondition>(this, _$identity);
}

abstract class _QueryCondition implements QueryCondition {
  const factory _QueryCondition(
      {required bool isCustom,
      required String leftField,
      required String logicalCompareType,
      required String rightField,
      required String customCondition}) = _$_QueryCondition;

  @override
  bool get isCustom => throw _privateConstructorUsedError;
  @override
  String get leftField => throw _privateConstructorUsedError;
  @override
  String get logicalCompareType => throw _privateConstructorUsedError;
  @override
  String get rightField => throw _privateConstructorUsedError;
  @override
  String get customCondition => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryConditionCopyWith<_QueryCondition> get copyWith =>
      throw _privateConstructorUsedError;
}
