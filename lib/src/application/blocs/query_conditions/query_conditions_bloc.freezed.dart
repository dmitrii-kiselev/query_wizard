// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_conditions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryConditionsEventTearOff {
  const _$QueryConditionsEventTearOff();

  _Initialized initialized({required List<QueryCondition> conditions}) {
    return _Initialized(
      conditions: conditions,
    );
  }

  _ConditionAdded conditionAdded({required QueryCondition condition}) {
    return _ConditionAdded(
      condition: condition,
    );
  }

  _ConditionUpdated conditionUpdated(
      {required int index,
      required QueryCondition condition,
      bool? isCustom,
      String? leftField,
      String? logicalCompareType,
      String? rightField,
      String? customCondition}) {
    return _ConditionUpdated(
      index: index,
      condition: condition,
      isCustom: isCustom,
      leftField: leftField,
      logicalCompareType: logicalCompareType,
      rightField: rightField,
      customCondition: customCondition,
    );
  }

  _ConditionCopied conditionCopied({required QueryCondition condition}) {
    return _ConditionCopied(
      condition: condition,
    );
  }

  _ConditionDeleted conditionDeleted({required int index}) {
    return _ConditionDeleted(
      index: index,
    );
  }

  _ConditionOrderChanged conditionOrderChanged(
      {required int oldIndex, required int newIndex}) {
    return _ConditionOrderChanged(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $QueryConditionsEvent = _$QueryConditionsEventTearOff();

/// @nodoc
mixin _$QueryConditionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryCondition> conditions) initialized,
    required TResult Function(QueryCondition condition) conditionAdded,
    required TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)
        conditionUpdated,
    required TResult Function(QueryCondition condition) conditionCopied,
    required TResult Function(int index) conditionDeleted,
    required TResult Function(int oldIndex, int newIndex) conditionOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryCondition> conditions)? initialized,
    TResult Function(QueryCondition condition)? conditionAdded,
    TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)?
        conditionUpdated,
    TResult Function(QueryCondition condition)? conditionCopied,
    TResult Function(int index)? conditionDeleted,
    TResult Function(int oldIndex, int newIndex)? conditionOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ConditionAdded value) conditionAdded,
    required TResult Function(_ConditionUpdated value) conditionUpdated,
    required TResult Function(_ConditionCopied value) conditionCopied,
    required TResult Function(_ConditionDeleted value) conditionDeleted,
    required TResult Function(_ConditionOrderChanged value)
        conditionOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ConditionAdded value)? conditionAdded,
    TResult Function(_ConditionUpdated value)? conditionUpdated,
    TResult Function(_ConditionCopied value)? conditionCopied,
    TResult Function(_ConditionDeleted value)? conditionDeleted,
    TResult Function(_ConditionOrderChanged value)? conditionOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryConditionsEventCopyWith<$Res> {
  factory $QueryConditionsEventCopyWith(QueryConditionsEvent value,
          $Res Function(QueryConditionsEvent) then) =
      _$QueryConditionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryConditionsEventCopyWithImpl<$Res>
    implements $QueryConditionsEventCopyWith<$Res> {
  _$QueryConditionsEventCopyWithImpl(this._value, this._then);

  final QueryConditionsEvent _value;
  // ignore: unused_field
  final $Res Function(QueryConditionsEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<QueryCondition> conditions});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QueryConditionsEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? conditions = freezed,
  }) {
    return _then(_Initialized(
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<QueryCondition>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.conditions});

  @override
  final List<QueryCondition> conditions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryConditionsEvent.initialized(conditions: $conditions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryConditionsEvent.initialized'))
      ..add(DiagnosticsProperty('conditions', conditions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.conditions, conditions) ||
                const DeepCollectionEquality()
                    .equals(other.conditions, conditions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(conditions);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryCondition> conditions) initialized,
    required TResult Function(QueryCondition condition) conditionAdded,
    required TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)
        conditionUpdated,
    required TResult Function(QueryCondition condition) conditionCopied,
    required TResult Function(int index) conditionDeleted,
    required TResult Function(int oldIndex, int newIndex) conditionOrderChanged,
  }) {
    return initialized(conditions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryCondition> conditions)? initialized,
    TResult Function(QueryCondition condition)? conditionAdded,
    TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)?
        conditionUpdated,
    TResult Function(QueryCondition condition)? conditionCopied,
    TResult Function(int index)? conditionDeleted,
    TResult Function(int oldIndex, int newIndex)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(conditions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ConditionAdded value) conditionAdded,
    required TResult Function(_ConditionUpdated value) conditionUpdated,
    required TResult Function(_ConditionCopied value) conditionCopied,
    required TResult Function(_ConditionDeleted value) conditionDeleted,
    required TResult Function(_ConditionOrderChanged value)
        conditionOrderChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ConditionAdded value)? conditionAdded,
    TResult Function(_ConditionUpdated value)? conditionUpdated,
    TResult Function(_ConditionCopied value)? conditionCopied,
    TResult Function(_ConditionDeleted value)? conditionDeleted,
    TResult Function(_ConditionOrderChanged value)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueryConditionsEvent {
  const factory _Initialized({required List<QueryCondition> conditions}) =
      _$_Initialized;

  List<QueryCondition> get conditions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConditionAddedCopyWith<$Res> {
  factory _$ConditionAddedCopyWith(
          _ConditionAdded value, $Res Function(_ConditionAdded) then) =
      __$ConditionAddedCopyWithImpl<$Res>;
  $Res call({QueryCondition condition});

  $QueryConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$ConditionAddedCopyWithImpl<$Res>
    extends _$QueryConditionsEventCopyWithImpl<$Res>
    implements _$ConditionAddedCopyWith<$Res> {
  __$ConditionAddedCopyWithImpl(
      _ConditionAdded _value, $Res Function(_ConditionAdded) _then)
      : super(_value, (v) => _then(v as _ConditionAdded));

  @override
  _ConditionAdded get _value => super._value as _ConditionAdded;

  @override
  $Res call({
    Object? condition = freezed,
  }) {
    return _then(_ConditionAdded(
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

class _$_ConditionAdded
    with DiagnosticableTreeMixin
    implements _ConditionAdded {
  const _$_ConditionAdded({required this.condition});

  @override
  final QueryCondition condition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryConditionsEvent.conditionAdded(condition: $condition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryConditionsEvent.conditionAdded'))
      ..add(DiagnosticsProperty('condition', condition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConditionAdded &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(condition);

  @JsonKey(ignore: true)
  @override
  _$ConditionAddedCopyWith<_ConditionAdded> get copyWith =>
      __$ConditionAddedCopyWithImpl<_ConditionAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryCondition> conditions) initialized,
    required TResult Function(QueryCondition condition) conditionAdded,
    required TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)
        conditionUpdated,
    required TResult Function(QueryCondition condition) conditionCopied,
    required TResult Function(int index) conditionDeleted,
    required TResult Function(int oldIndex, int newIndex) conditionOrderChanged,
  }) {
    return conditionAdded(condition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryCondition> conditions)? initialized,
    TResult Function(QueryCondition condition)? conditionAdded,
    TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)?
        conditionUpdated,
    TResult Function(QueryCondition condition)? conditionCopied,
    TResult Function(int index)? conditionDeleted,
    TResult Function(int oldIndex, int newIndex)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionAdded != null) {
      return conditionAdded(condition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ConditionAdded value) conditionAdded,
    required TResult Function(_ConditionUpdated value) conditionUpdated,
    required TResult Function(_ConditionCopied value) conditionCopied,
    required TResult Function(_ConditionDeleted value) conditionDeleted,
    required TResult Function(_ConditionOrderChanged value)
        conditionOrderChanged,
  }) {
    return conditionAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ConditionAdded value)? conditionAdded,
    TResult Function(_ConditionUpdated value)? conditionUpdated,
    TResult Function(_ConditionCopied value)? conditionCopied,
    TResult Function(_ConditionDeleted value)? conditionDeleted,
    TResult Function(_ConditionOrderChanged value)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionAdded != null) {
      return conditionAdded(this);
    }
    return orElse();
  }
}

abstract class _ConditionAdded implements QueryConditionsEvent {
  const factory _ConditionAdded({required QueryCondition condition}) =
      _$_ConditionAdded;

  QueryCondition get condition => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConditionAddedCopyWith<_ConditionAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConditionUpdatedCopyWith<$Res> {
  factory _$ConditionUpdatedCopyWith(
          _ConditionUpdated value, $Res Function(_ConditionUpdated) then) =
      __$ConditionUpdatedCopyWithImpl<$Res>;
  $Res call(
      {int index,
      QueryCondition condition,
      bool? isCustom,
      String? leftField,
      String? logicalCompareType,
      String? rightField,
      String? customCondition});

  $QueryConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$ConditionUpdatedCopyWithImpl<$Res>
    extends _$QueryConditionsEventCopyWithImpl<$Res>
    implements _$ConditionUpdatedCopyWith<$Res> {
  __$ConditionUpdatedCopyWithImpl(
      _ConditionUpdated _value, $Res Function(_ConditionUpdated) _then)
      : super(_value, (v) => _then(v as _ConditionUpdated));

  @override
  _ConditionUpdated get _value => super._value as _ConditionUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? condition = freezed,
    Object? isCustom = freezed,
    Object? leftField = freezed,
    Object? logicalCompareType = freezed,
    Object? rightField = freezed,
    Object? customCondition = freezed,
  }) {
    return _then(_ConditionUpdated(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as QueryCondition,
      isCustom: isCustom == freezed
          ? _value.isCustom
          : isCustom // ignore: cast_nullable_to_non_nullable
              as bool?,
      leftField: leftField == freezed
          ? _value.leftField
          : leftField // ignore: cast_nullable_to_non_nullable
              as String?,
      logicalCompareType: logicalCompareType == freezed
          ? _value.logicalCompareType
          : logicalCompareType // ignore: cast_nullable_to_non_nullable
              as String?,
      rightField: rightField == freezed
          ? _value.rightField
          : rightField // ignore: cast_nullable_to_non_nullable
              as String?,
      customCondition: customCondition == freezed
          ? _value.customCondition
          : customCondition // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_ConditionUpdated
    with DiagnosticableTreeMixin
    implements _ConditionUpdated {
  const _$_ConditionUpdated(
      {required this.index,
      required this.condition,
      this.isCustom,
      this.leftField,
      this.logicalCompareType,
      this.rightField,
      this.customCondition});

  @override
  final int index;
  @override
  final QueryCondition condition;
  @override
  final bool? isCustom;
  @override
  final String? leftField;
  @override
  final String? logicalCompareType;
  @override
  final String? rightField;
  @override
  final String? customCondition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryConditionsEvent.conditionUpdated(index: $index, condition: $condition, isCustom: $isCustom, leftField: $leftField, logicalCompareType: $logicalCompareType, rightField: $rightField, customCondition: $customCondition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'QueryConditionsEvent.conditionUpdated'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('condition', condition))
      ..add(DiagnosticsProperty('isCustom', isCustom))
      ..add(DiagnosticsProperty('leftField', leftField))
      ..add(DiagnosticsProperty('logicalCompareType', logicalCompareType))
      ..add(DiagnosticsProperty('rightField', rightField))
      ..add(DiagnosticsProperty('customCondition', customCondition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConditionUpdated &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
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
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(isCustom) ^
      const DeepCollectionEquality().hash(leftField) ^
      const DeepCollectionEquality().hash(logicalCompareType) ^
      const DeepCollectionEquality().hash(rightField) ^
      const DeepCollectionEquality().hash(customCondition);

  @JsonKey(ignore: true)
  @override
  _$ConditionUpdatedCopyWith<_ConditionUpdated> get copyWith =>
      __$ConditionUpdatedCopyWithImpl<_ConditionUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryCondition> conditions) initialized,
    required TResult Function(QueryCondition condition) conditionAdded,
    required TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)
        conditionUpdated,
    required TResult Function(QueryCondition condition) conditionCopied,
    required TResult Function(int index) conditionDeleted,
    required TResult Function(int oldIndex, int newIndex) conditionOrderChanged,
  }) {
    return conditionUpdated(index, condition, isCustom, leftField,
        logicalCompareType, rightField, customCondition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryCondition> conditions)? initialized,
    TResult Function(QueryCondition condition)? conditionAdded,
    TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)?
        conditionUpdated,
    TResult Function(QueryCondition condition)? conditionCopied,
    TResult Function(int index)? conditionDeleted,
    TResult Function(int oldIndex, int newIndex)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionUpdated != null) {
      return conditionUpdated(index, condition, isCustom, leftField,
          logicalCompareType, rightField, customCondition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ConditionAdded value) conditionAdded,
    required TResult Function(_ConditionUpdated value) conditionUpdated,
    required TResult Function(_ConditionCopied value) conditionCopied,
    required TResult Function(_ConditionDeleted value) conditionDeleted,
    required TResult Function(_ConditionOrderChanged value)
        conditionOrderChanged,
  }) {
    return conditionUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ConditionAdded value)? conditionAdded,
    TResult Function(_ConditionUpdated value)? conditionUpdated,
    TResult Function(_ConditionCopied value)? conditionCopied,
    TResult Function(_ConditionDeleted value)? conditionDeleted,
    TResult Function(_ConditionOrderChanged value)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionUpdated != null) {
      return conditionUpdated(this);
    }
    return orElse();
  }
}

abstract class _ConditionUpdated implements QueryConditionsEvent {
  const factory _ConditionUpdated(
      {required int index,
      required QueryCondition condition,
      bool? isCustom,
      String? leftField,
      String? logicalCompareType,
      String? rightField,
      String? customCondition}) = _$_ConditionUpdated;

  int get index => throw _privateConstructorUsedError;
  QueryCondition get condition => throw _privateConstructorUsedError;
  bool? get isCustom => throw _privateConstructorUsedError;
  String? get leftField => throw _privateConstructorUsedError;
  String? get logicalCompareType => throw _privateConstructorUsedError;
  String? get rightField => throw _privateConstructorUsedError;
  String? get customCondition => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConditionUpdatedCopyWith<_ConditionUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConditionCopiedCopyWith<$Res> {
  factory _$ConditionCopiedCopyWith(
          _ConditionCopied value, $Res Function(_ConditionCopied) then) =
      __$ConditionCopiedCopyWithImpl<$Res>;
  $Res call({QueryCondition condition});

  $QueryConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$ConditionCopiedCopyWithImpl<$Res>
    extends _$QueryConditionsEventCopyWithImpl<$Res>
    implements _$ConditionCopiedCopyWith<$Res> {
  __$ConditionCopiedCopyWithImpl(
      _ConditionCopied _value, $Res Function(_ConditionCopied) _then)
      : super(_value, (v) => _then(v as _ConditionCopied));

  @override
  _ConditionCopied get _value => super._value as _ConditionCopied;

  @override
  $Res call({
    Object? condition = freezed,
  }) {
    return _then(_ConditionCopied(
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

class _$_ConditionCopied
    with DiagnosticableTreeMixin
    implements _ConditionCopied {
  const _$_ConditionCopied({required this.condition});

  @override
  final QueryCondition condition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryConditionsEvent.conditionCopied(condition: $condition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryConditionsEvent.conditionCopied'))
      ..add(DiagnosticsProperty('condition', condition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConditionCopied &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(condition);

  @JsonKey(ignore: true)
  @override
  _$ConditionCopiedCopyWith<_ConditionCopied> get copyWith =>
      __$ConditionCopiedCopyWithImpl<_ConditionCopied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryCondition> conditions) initialized,
    required TResult Function(QueryCondition condition) conditionAdded,
    required TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)
        conditionUpdated,
    required TResult Function(QueryCondition condition) conditionCopied,
    required TResult Function(int index) conditionDeleted,
    required TResult Function(int oldIndex, int newIndex) conditionOrderChanged,
  }) {
    return conditionCopied(condition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryCondition> conditions)? initialized,
    TResult Function(QueryCondition condition)? conditionAdded,
    TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)?
        conditionUpdated,
    TResult Function(QueryCondition condition)? conditionCopied,
    TResult Function(int index)? conditionDeleted,
    TResult Function(int oldIndex, int newIndex)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionCopied != null) {
      return conditionCopied(condition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ConditionAdded value) conditionAdded,
    required TResult Function(_ConditionUpdated value) conditionUpdated,
    required TResult Function(_ConditionCopied value) conditionCopied,
    required TResult Function(_ConditionDeleted value) conditionDeleted,
    required TResult Function(_ConditionOrderChanged value)
        conditionOrderChanged,
  }) {
    return conditionCopied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ConditionAdded value)? conditionAdded,
    TResult Function(_ConditionUpdated value)? conditionUpdated,
    TResult Function(_ConditionCopied value)? conditionCopied,
    TResult Function(_ConditionDeleted value)? conditionDeleted,
    TResult Function(_ConditionOrderChanged value)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionCopied != null) {
      return conditionCopied(this);
    }
    return orElse();
  }
}

abstract class _ConditionCopied implements QueryConditionsEvent {
  const factory _ConditionCopied({required QueryCondition condition}) =
      _$_ConditionCopied;

  QueryCondition get condition => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConditionCopiedCopyWith<_ConditionCopied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConditionDeletedCopyWith<$Res> {
  factory _$ConditionDeletedCopyWith(
          _ConditionDeleted value, $Res Function(_ConditionDeleted) then) =
      __$ConditionDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$ConditionDeletedCopyWithImpl<$Res>
    extends _$QueryConditionsEventCopyWithImpl<$Res>
    implements _$ConditionDeletedCopyWith<$Res> {
  __$ConditionDeletedCopyWithImpl(
      _ConditionDeleted _value, $Res Function(_ConditionDeleted) _then)
      : super(_value, (v) => _then(v as _ConditionDeleted));

  @override
  _ConditionDeleted get _value => super._value as _ConditionDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_ConditionDeleted(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ConditionDeleted
    with DiagnosticableTreeMixin
    implements _ConditionDeleted {
  const _$_ConditionDeleted({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryConditionsEvent.conditionDeleted(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'QueryConditionsEvent.conditionDeleted'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConditionDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$ConditionDeletedCopyWith<_ConditionDeleted> get copyWith =>
      __$ConditionDeletedCopyWithImpl<_ConditionDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryCondition> conditions) initialized,
    required TResult Function(QueryCondition condition) conditionAdded,
    required TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)
        conditionUpdated,
    required TResult Function(QueryCondition condition) conditionCopied,
    required TResult Function(int index) conditionDeleted,
    required TResult Function(int oldIndex, int newIndex) conditionOrderChanged,
  }) {
    return conditionDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryCondition> conditions)? initialized,
    TResult Function(QueryCondition condition)? conditionAdded,
    TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)?
        conditionUpdated,
    TResult Function(QueryCondition condition)? conditionCopied,
    TResult Function(int index)? conditionDeleted,
    TResult Function(int oldIndex, int newIndex)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionDeleted != null) {
      return conditionDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ConditionAdded value) conditionAdded,
    required TResult Function(_ConditionUpdated value) conditionUpdated,
    required TResult Function(_ConditionCopied value) conditionCopied,
    required TResult Function(_ConditionDeleted value) conditionDeleted,
    required TResult Function(_ConditionOrderChanged value)
        conditionOrderChanged,
  }) {
    return conditionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ConditionAdded value)? conditionAdded,
    TResult Function(_ConditionUpdated value)? conditionUpdated,
    TResult Function(_ConditionCopied value)? conditionCopied,
    TResult Function(_ConditionDeleted value)? conditionDeleted,
    TResult Function(_ConditionOrderChanged value)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionDeleted != null) {
      return conditionDeleted(this);
    }
    return orElse();
  }
}

abstract class _ConditionDeleted implements QueryConditionsEvent {
  const factory _ConditionDeleted({required int index}) = _$_ConditionDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConditionDeletedCopyWith<_ConditionDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConditionOrderChangedCopyWith<$Res> {
  factory _$ConditionOrderChangedCopyWith(_ConditionOrderChanged value,
          $Res Function(_ConditionOrderChanged) then) =
      __$ConditionOrderChangedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$ConditionOrderChangedCopyWithImpl<$Res>
    extends _$QueryConditionsEventCopyWithImpl<$Res>
    implements _$ConditionOrderChangedCopyWith<$Res> {
  __$ConditionOrderChangedCopyWithImpl(_ConditionOrderChanged _value,
      $Res Function(_ConditionOrderChanged) _then)
      : super(_value, (v) => _then(v as _ConditionOrderChanged));

  @override
  _ConditionOrderChanged get _value => super._value as _ConditionOrderChanged;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_ConditionOrderChanged(
      oldIndex: oldIndex == freezed
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ConditionOrderChanged
    with DiagnosticableTreeMixin
    implements _ConditionOrderChanged {
  const _$_ConditionOrderChanged(
      {required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryConditionsEvent.conditionOrderChanged(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'QueryConditionsEvent.conditionOrderChanged'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConditionOrderChanged &&
            (identical(other.oldIndex, oldIndex) ||
                const DeepCollectionEquality()
                    .equals(other.oldIndex, oldIndex)) &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldIndex) ^
      const DeepCollectionEquality().hash(newIndex);

  @JsonKey(ignore: true)
  @override
  _$ConditionOrderChangedCopyWith<_ConditionOrderChanged> get copyWith =>
      __$ConditionOrderChangedCopyWithImpl<_ConditionOrderChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryCondition> conditions) initialized,
    required TResult Function(QueryCondition condition) conditionAdded,
    required TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)
        conditionUpdated,
    required TResult Function(QueryCondition condition) conditionCopied,
    required TResult Function(int index) conditionDeleted,
    required TResult Function(int oldIndex, int newIndex) conditionOrderChanged,
  }) {
    return conditionOrderChanged(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryCondition> conditions)? initialized,
    TResult Function(QueryCondition condition)? conditionAdded,
    TResult Function(
            int index,
            QueryCondition condition,
            bool? isCustom,
            String? leftField,
            String? logicalCompareType,
            String? rightField,
            String? customCondition)?
        conditionUpdated,
    TResult Function(QueryCondition condition)? conditionCopied,
    TResult Function(int index)? conditionDeleted,
    TResult Function(int oldIndex, int newIndex)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionOrderChanged != null) {
      return conditionOrderChanged(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ConditionAdded value) conditionAdded,
    required TResult Function(_ConditionUpdated value) conditionUpdated,
    required TResult Function(_ConditionCopied value) conditionCopied,
    required TResult Function(_ConditionDeleted value) conditionDeleted,
    required TResult Function(_ConditionOrderChanged value)
        conditionOrderChanged,
  }) {
    return conditionOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ConditionAdded value)? conditionAdded,
    TResult Function(_ConditionUpdated value)? conditionUpdated,
    TResult Function(_ConditionCopied value)? conditionCopied,
    TResult Function(_ConditionDeleted value)? conditionDeleted,
    TResult Function(_ConditionOrderChanged value)? conditionOrderChanged,
    required TResult orElse(),
  }) {
    if (conditionOrderChanged != null) {
      return conditionOrderChanged(this);
    }
    return orElse();
  }
}

abstract class _ConditionOrderChanged implements QueryConditionsEvent {
  const factory _ConditionOrderChanged(
      {required int oldIndex,
      required int newIndex}) = _$_ConditionOrderChanged;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConditionOrderChangedCopyWith<_ConditionOrderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueryConditionsStateTearOff {
  const _$QueryConditionsStateTearOff();

  _QueryConditionsState call(
      {required bool isChanging, required List<QueryCondition> conditions}) {
    return _QueryConditionsState(
      isChanging: isChanging,
      conditions: conditions,
    );
  }
}

/// @nodoc
const $QueryConditionsState = _$QueryConditionsStateTearOff();

/// @nodoc
mixin _$QueryConditionsState {
  bool get isChanging => throw _privateConstructorUsedError;
  List<QueryCondition> get conditions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryConditionsStateCopyWith<QueryConditionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryConditionsStateCopyWith<$Res> {
  factory $QueryConditionsStateCopyWith(QueryConditionsState value,
          $Res Function(QueryConditionsState) then) =
      _$QueryConditionsStateCopyWithImpl<$Res>;
  $Res call({bool isChanging, List<QueryCondition> conditions});
}

/// @nodoc
class _$QueryConditionsStateCopyWithImpl<$Res>
    implements $QueryConditionsStateCopyWith<$Res> {
  _$QueryConditionsStateCopyWithImpl(this._value, this._then);

  final QueryConditionsState _value;
  // ignore: unused_field
  final $Res Function(QueryConditionsState) _then;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_value.copyWith(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<QueryCondition>,
    ));
  }
}

/// @nodoc
abstract class _$QueryConditionsStateCopyWith<$Res>
    implements $QueryConditionsStateCopyWith<$Res> {
  factory _$QueryConditionsStateCopyWith(_QueryConditionsState value,
          $Res Function(_QueryConditionsState) then) =
      __$QueryConditionsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isChanging, List<QueryCondition> conditions});
}

/// @nodoc
class __$QueryConditionsStateCopyWithImpl<$Res>
    extends _$QueryConditionsStateCopyWithImpl<$Res>
    implements _$QueryConditionsStateCopyWith<$Res> {
  __$QueryConditionsStateCopyWithImpl(
      _QueryConditionsState _value, $Res Function(_QueryConditionsState) _then)
      : super(_value, (v) => _then(v as _QueryConditionsState));

  @override
  _QueryConditionsState get _value => super._value as _QueryConditionsState;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_QueryConditionsState(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<QueryCondition>,
    ));
  }
}

/// @nodoc

class _$_QueryConditionsState
    with DiagnosticableTreeMixin
    implements _QueryConditionsState {
  const _$_QueryConditionsState(
      {required this.isChanging, required this.conditions});

  @override
  final bool isChanging;
  @override
  final List<QueryCondition> conditions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryConditionsState(isChanging: $isChanging, conditions: $conditions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryConditionsState'))
      ..add(DiagnosticsProperty('isChanging', isChanging))
      ..add(DiagnosticsProperty('conditions', conditions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryConditionsState &&
            (identical(other.isChanging, isChanging) ||
                const DeepCollectionEquality()
                    .equals(other.isChanging, isChanging)) &&
            (identical(other.conditions, conditions) ||
                const DeepCollectionEquality()
                    .equals(other.conditions, conditions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isChanging) ^
      const DeepCollectionEquality().hash(conditions);

  @JsonKey(ignore: true)
  @override
  _$QueryConditionsStateCopyWith<_QueryConditionsState> get copyWith =>
      __$QueryConditionsStateCopyWithImpl<_QueryConditionsState>(
          this, _$identity);
}

abstract class _QueryConditionsState implements QueryConditionsState {
  const factory _QueryConditionsState(
      {required bool isChanging,
      required List<QueryCondition> conditions}) = _$_QueryConditionsState;

  @override
  bool get isChanging => throw _privateConstructorUsedError;
  @override
  List<QueryCondition> get conditions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryConditionsStateCopyWith<_QueryConditionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
