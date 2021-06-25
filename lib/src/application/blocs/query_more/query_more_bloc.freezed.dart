// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_more_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryMoreEventTearOff {
  const _$QueryMoreEventTearOff();

  _Initialized initialized(
      {required bool isTop,
      required int topCounter,
      required bool isDistinct,
      required QueryType queryType,
      required String tempTableName}) {
    return _Initialized(
      isTop: isTop,
      topCounter: topCounter,
      isDistinct: isDistinct,
      queryType: queryType,
      tempTableName: tempTableName,
    );
  }

  _Changed changed(
      {required bool isTop,
      required int topCounter,
      required bool isDistinct,
      required QueryType queryType,
      required String tempTableName}) {
    return _Changed(
      isTop: isTop,
      topCounter: topCounter,
      isDistinct: isDistinct,
      queryType: queryType,
      tempTableName: tempTableName,
    );
  }
}

/// @nodoc
const $QueryMoreEvent = _$QueryMoreEventTearOff();

/// @nodoc
mixin _$QueryMoreEvent {
  bool get isTop => throw _privateConstructorUsedError;
  int get topCounter => throw _privateConstructorUsedError;
  bool get isDistinct => throw _privateConstructorUsedError;
  QueryType get queryType => throw _privateConstructorUsedError;
  String get tempTableName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)
        initialized,
    required TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)
        changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)?
        initialized,
    TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)?
        changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Changed value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryMoreEventCopyWith<QueryMoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryMoreEventCopyWith<$Res> {
  factory $QueryMoreEventCopyWith(
          QueryMoreEvent value, $Res Function(QueryMoreEvent) then) =
      _$QueryMoreEventCopyWithImpl<$Res>;
  $Res call(
      {bool isTop,
      int topCounter,
      bool isDistinct,
      QueryType queryType,
      String tempTableName});
}

/// @nodoc
class _$QueryMoreEventCopyWithImpl<$Res>
    implements $QueryMoreEventCopyWith<$Res> {
  _$QueryMoreEventCopyWithImpl(this._value, this._then);

  final QueryMoreEvent _value;
  // ignore: unused_field
  final $Res Function(QueryMoreEvent) _then;

  @override
  $Res call({
    Object? isTop = freezed,
    Object? topCounter = freezed,
    Object? isDistinct = freezed,
    Object? queryType = freezed,
    Object? tempTableName = freezed,
  }) {
    return _then(_value.copyWith(
      isTop: isTop == freezed
          ? _value.isTop
          : isTop // ignore: cast_nullable_to_non_nullable
              as bool,
      topCounter: topCounter == freezed
          ? _value.topCounter
          : topCounter // ignore: cast_nullable_to_non_nullable
              as int,
      isDistinct: isDistinct == freezed
          ? _value.isDistinct
          : isDistinct // ignore: cast_nullable_to_non_nullable
              as bool,
      queryType: queryType == freezed
          ? _value.queryType
          : queryType // ignore: cast_nullable_to_non_nullable
              as QueryType,
      tempTableName: tempTableName == freezed
          ? _value.tempTableName
          : tempTableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $QueryMoreEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isTop,
      int topCounter,
      bool isDistinct,
      QueryType queryType,
      String tempTableName});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QueryMoreEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? isTop = freezed,
    Object? topCounter = freezed,
    Object? isDistinct = freezed,
    Object? queryType = freezed,
    Object? tempTableName = freezed,
  }) {
    return _then(_Initialized(
      isTop: isTop == freezed
          ? _value.isTop
          : isTop // ignore: cast_nullable_to_non_nullable
              as bool,
      topCounter: topCounter == freezed
          ? _value.topCounter
          : topCounter // ignore: cast_nullable_to_non_nullable
              as int,
      isDistinct: isDistinct == freezed
          ? _value.isDistinct
          : isDistinct // ignore: cast_nullable_to_non_nullable
              as bool,
      queryType: queryType == freezed
          ? _value.queryType
          : queryType // ignore: cast_nullable_to_non_nullable
              as QueryType,
      tempTableName: tempTableName == freezed
          ? _value.tempTableName
          : tempTableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(
      {required this.isTop,
      required this.topCounter,
      required this.isDistinct,
      required this.queryType,
      required this.tempTableName});

  @override
  final bool isTop;
  @override
  final int topCounter;
  @override
  final bool isDistinct;
  @override
  final QueryType queryType;
  @override
  final String tempTableName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryMoreEvent.initialized(isTop: $isTop, topCounter: $topCounter, isDistinct: $isDistinct, queryType: $queryType, tempTableName: $tempTableName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryMoreEvent.initialized'))
      ..add(DiagnosticsProperty('isTop', isTop))
      ..add(DiagnosticsProperty('topCounter', topCounter))
      ..add(DiagnosticsProperty('isDistinct', isDistinct))
      ..add(DiagnosticsProperty('queryType', queryType))
      ..add(DiagnosticsProperty('tempTableName', tempTableName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.isTop, isTop) ||
                const DeepCollectionEquality().equals(other.isTop, isTop)) &&
            (identical(other.topCounter, topCounter) ||
                const DeepCollectionEquality()
                    .equals(other.topCounter, topCounter)) &&
            (identical(other.isDistinct, isDistinct) ||
                const DeepCollectionEquality()
                    .equals(other.isDistinct, isDistinct)) &&
            (identical(other.queryType, queryType) ||
                const DeepCollectionEquality()
                    .equals(other.queryType, queryType)) &&
            (identical(other.tempTableName, tempTableName) ||
                const DeepCollectionEquality()
                    .equals(other.tempTableName, tempTableName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isTop) ^
      const DeepCollectionEquality().hash(topCounter) ^
      const DeepCollectionEquality().hash(isDistinct) ^
      const DeepCollectionEquality().hash(queryType) ^
      const DeepCollectionEquality().hash(tempTableName);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)
        initialized,
    required TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)
        changed,
  }) {
    return initialized(isTop, topCounter, isDistinct, queryType, tempTableName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)?
        initialized,
    TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)?
        changed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(
          isTop, topCounter, isDistinct, queryType, tempTableName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Changed value) changed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueryMoreEvent {
  const factory _Initialized(
      {required bool isTop,
      required int topCounter,
      required bool isDistinct,
      required QueryType queryType,
      required String tempTableName}) = _$_Initialized;

  @override
  bool get isTop => throw _privateConstructorUsedError;
  @override
  int get topCounter => throw _privateConstructorUsedError;
  @override
  bool get isDistinct => throw _privateConstructorUsedError;
  @override
  QueryType get queryType => throw _privateConstructorUsedError;
  @override
  String get tempTableName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangedCopyWith<$Res>
    implements $QueryMoreEventCopyWith<$Res> {
  factory _$ChangedCopyWith(_Changed value, $Res Function(_Changed) then) =
      __$ChangedCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isTop,
      int topCounter,
      bool isDistinct,
      QueryType queryType,
      String tempTableName});
}

/// @nodoc
class __$ChangedCopyWithImpl<$Res> extends _$QueryMoreEventCopyWithImpl<$Res>
    implements _$ChangedCopyWith<$Res> {
  __$ChangedCopyWithImpl(_Changed _value, $Res Function(_Changed) _then)
      : super(_value, (v) => _then(v as _Changed));

  @override
  _Changed get _value => super._value as _Changed;

  @override
  $Res call({
    Object? isTop = freezed,
    Object? topCounter = freezed,
    Object? isDistinct = freezed,
    Object? queryType = freezed,
    Object? tempTableName = freezed,
  }) {
    return _then(_Changed(
      isTop: isTop == freezed
          ? _value.isTop
          : isTop // ignore: cast_nullable_to_non_nullable
              as bool,
      topCounter: topCounter == freezed
          ? _value.topCounter
          : topCounter // ignore: cast_nullable_to_non_nullable
              as int,
      isDistinct: isDistinct == freezed
          ? _value.isDistinct
          : isDistinct // ignore: cast_nullable_to_non_nullable
              as bool,
      queryType: queryType == freezed
          ? _value.queryType
          : queryType // ignore: cast_nullable_to_non_nullable
              as QueryType,
      tempTableName: tempTableName == freezed
          ? _value.tempTableName
          : tempTableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Changed with DiagnosticableTreeMixin implements _Changed {
  const _$_Changed(
      {required this.isTop,
      required this.topCounter,
      required this.isDistinct,
      required this.queryType,
      required this.tempTableName});

  @override
  final bool isTop;
  @override
  final int topCounter;
  @override
  final bool isDistinct;
  @override
  final QueryType queryType;
  @override
  final String tempTableName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryMoreEvent.changed(isTop: $isTop, topCounter: $topCounter, isDistinct: $isDistinct, queryType: $queryType, tempTableName: $tempTableName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryMoreEvent.changed'))
      ..add(DiagnosticsProperty('isTop', isTop))
      ..add(DiagnosticsProperty('topCounter', topCounter))
      ..add(DiagnosticsProperty('isDistinct', isDistinct))
      ..add(DiagnosticsProperty('queryType', queryType))
      ..add(DiagnosticsProperty('tempTableName', tempTableName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Changed &&
            (identical(other.isTop, isTop) ||
                const DeepCollectionEquality().equals(other.isTop, isTop)) &&
            (identical(other.topCounter, topCounter) ||
                const DeepCollectionEquality()
                    .equals(other.topCounter, topCounter)) &&
            (identical(other.isDistinct, isDistinct) ||
                const DeepCollectionEquality()
                    .equals(other.isDistinct, isDistinct)) &&
            (identical(other.queryType, queryType) ||
                const DeepCollectionEquality()
                    .equals(other.queryType, queryType)) &&
            (identical(other.tempTableName, tempTableName) ||
                const DeepCollectionEquality()
                    .equals(other.tempTableName, tempTableName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isTop) ^
      const DeepCollectionEquality().hash(topCounter) ^
      const DeepCollectionEquality().hash(isDistinct) ^
      const DeepCollectionEquality().hash(queryType) ^
      const DeepCollectionEquality().hash(tempTableName);

  @JsonKey(ignore: true)
  @override
  _$ChangedCopyWith<_Changed> get copyWith =>
      __$ChangedCopyWithImpl<_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)
        initialized,
    required TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)
        changed,
  }) {
    return changed(isTop, topCounter, isDistinct, queryType, tempTableName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)?
        initialized,
    TResult Function(bool isTop, int topCounter, bool isDistinct,
            QueryType queryType, String tempTableName)?
        changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(isTop, topCounter, isDistinct, queryType, tempTableName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Changed value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements QueryMoreEvent {
  const factory _Changed(
      {required bool isTop,
      required int topCounter,
      required bool isDistinct,
      required QueryType queryType,
      required String tempTableName}) = _$_Changed;

  @override
  bool get isTop => throw _privateConstructorUsedError;
  @override
  int get topCounter => throw _privateConstructorUsedError;
  @override
  bool get isDistinct => throw _privateConstructorUsedError;
  @override
  QueryType get queryType => throw _privateConstructorUsedError;
  @override
  String get tempTableName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangedCopyWith<_Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueryMoreStateTearOff {
  const _$QueryMoreStateTearOff();

  _QueryMoreState call(
      {required bool isTop,
      required int topCounter,
      required bool isDistinct,
      required QueryType queryType,
      required String tempTableName}) {
    return _QueryMoreState(
      isTop: isTop,
      topCounter: topCounter,
      isDistinct: isDistinct,
      queryType: queryType,
      tempTableName: tempTableName,
    );
  }
}

/// @nodoc
const $QueryMoreState = _$QueryMoreStateTearOff();

/// @nodoc
mixin _$QueryMoreState {
  bool get isTop => throw _privateConstructorUsedError;
  int get topCounter => throw _privateConstructorUsedError;
  bool get isDistinct => throw _privateConstructorUsedError;
  QueryType get queryType => throw _privateConstructorUsedError;
  String get tempTableName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryMoreStateCopyWith<QueryMoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryMoreStateCopyWith<$Res> {
  factory $QueryMoreStateCopyWith(
          QueryMoreState value, $Res Function(QueryMoreState) then) =
      _$QueryMoreStateCopyWithImpl<$Res>;
  $Res call(
      {bool isTop,
      int topCounter,
      bool isDistinct,
      QueryType queryType,
      String tempTableName});
}

/// @nodoc
class _$QueryMoreStateCopyWithImpl<$Res>
    implements $QueryMoreStateCopyWith<$Res> {
  _$QueryMoreStateCopyWithImpl(this._value, this._then);

  final QueryMoreState _value;
  // ignore: unused_field
  final $Res Function(QueryMoreState) _then;

  @override
  $Res call({
    Object? isTop = freezed,
    Object? topCounter = freezed,
    Object? isDistinct = freezed,
    Object? queryType = freezed,
    Object? tempTableName = freezed,
  }) {
    return _then(_value.copyWith(
      isTop: isTop == freezed
          ? _value.isTop
          : isTop // ignore: cast_nullable_to_non_nullable
              as bool,
      topCounter: topCounter == freezed
          ? _value.topCounter
          : topCounter // ignore: cast_nullable_to_non_nullable
              as int,
      isDistinct: isDistinct == freezed
          ? _value.isDistinct
          : isDistinct // ignore: cast_nullable_to_non_nullable
              as bool,
      queryType: queryType == freezed
          ? _value.queryType
          : queryType // ignore: cast_nullable_to_non_nullable
              as QueryType,
      tempTableName: tempTableName == freezed
          ? _value.tempTableName
          : tempTableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$QueryMoreStateCopyWith<$Res>
    implements $QueryMoreStateCopyWith<$Res> {
  factory _$QueryMoreStateCopyWith(
          _QueryMoreState value, $Res Function(_QueryMoreState) then) =
      __$QueryMoreStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isTop,
      int topCounter,
      bool isDistinct,
      QueryType queryType,
      String tempTableName});
}

/// @nodoc
class __$QueryMoreStateCopyWithImpl<$Res>
    extends _$QueryMoreStateCopyWithImpl<$Res>
    implements _$QueryMoreStateCopyWith<$Res> {
  __$QueryMoreStateCopyWithImpl(
      _QueryMoreState _value, $Res Function(_QueryMoreState) _then)
      : super(_value, (v) => _then(v as _QueryMoreState));

  @override
  _QueryMoreState get _value => super._value as _QueryMoreState;

  @override
  $Res call({
    Object? isTop = freezed,
    Object? topCounter = freezed,
    Object? isDistinct = freezed,
    Object? queryType = freezed,
    Object? tempTableName = freezed,
  }) {
    return _then(_QueryMoreState(
      isTop: isTop == freezed
          ? _value.isTop
          : isTop // ignore: cast_nullable_to_non_nullable
              as bool,
      topCounter: topCounter == freezed
          ? _value.topCounter
          : topCounter // ignore: cast_nullable_to_non_nullable
              as int,
      isDistinct: isDistinct == freezed
          ? _value.isDistinct
          : isDistinct // ignore: cast_nullable_to_non_nullable
              as bool,
      queryType: queryType == freezed
          ? _value.queryType
          : queryType // ignore: cast_nullable_to_non_nullable
              as QueryType,
      tempTableName: tempTableName == freezed
          ? _value.tempTableName
          : tempTableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QueryMoreState
    with DiagnosticableTreeMixin
    implements _QueryMoreState {
  const _$_QueryMoreState(
      {required this.isTop,
      required this.topCounter,
      required this.isDistinct,
      required this.queryType,
      required this.tempTableName});

  @override
  final bool isTop;
  @override
  final int topCounter;
  @override
  final bool isDistinct;
  @override
  final QueryType queryType;
  @override
  final String tempTableName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryMoreState(isTop: $isTop, topCounter: $topCounter, isDistinct: $isDistinct, queryType: $queryType, tempTableName: $tempTableName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryMoreState'))
      ..add(DiagnosticsProperty('isTop', isTop))
      ..add(DiagnosticsProperty('topCounter', topCounter))
      ..add(DiagnosticsProperty('isDistinct', isDistinct))
      ..add(DiagnosticsProperty('queryType', queryType))
      ..add(DiagnosticsProperty('tempTableName', tempTableName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryMoreState &&
            (identical(other.isTop, isTop) ||
                const DeepCollectionEquality().equals(other.isTop, isTop)) &&
            (identical(other.topCounter, topCounter) ||
                const DeepCollectionEquality()
                    .equals(other.topCounter, topCounter)) &&
            (identical(other.isDistinct, isDistinct) ||
                const DeepCollectionEquality()
                    .equals(other.isDistinct, isDistinct)) &&
            (identical(other.queryType, queryType) ||
                const DeepCollectionEquality()
                    .equals(other.queryType, queryType)) &&
            (identical(other.tempTableName, tempTableName) ||
                const DeepCollectionEquality()
                    .equals(other.tempTableName, tempTableName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isTop) ^
      const DeepCollectionEquality().hash(topCounter) ^
      const DeepCollectionEquality().hash(isDistinct) ^
      const DeepCollectionEquality().hash(queryType) ^
      const DeepCollectionEquality().hash(tempTableName);

  @JsonKey(ignore: true)
  @override
  _$QueryMoreStateCopyWith<_QueryMoreState> get copyWith =>
      __$QueryMoreStateCopyWithImpl<_QueryMoreState>(this, _$identity);
}

abstract class _QueryMoreState implements QueryMoreState {
  const factory _QueryMoreState(
      {required bool isTop,
      required int topCounter,
      required bool isDistinct,
      required QueryType queryType,
      required String tempTableName}) = _$_QueryMoreState;

  @override
  bool get isTop => throw _privateConstructorUsedError;
  @override
  int get topCounter => throw _privateConstructorUsedError;
  @override
  bool get isDistinct => throw _privateConstructorUsedError;
  @override
  QueryType get queryType => throw _privateConstructorUsedError;
  @override
  String get tempTableName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryMoreStateCopyWith<_QueryMoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
