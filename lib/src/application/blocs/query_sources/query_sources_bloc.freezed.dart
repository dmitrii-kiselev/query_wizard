// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_sources_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuerySourcesEventTearOff {
  const _$QuerySourcesEventTearOff();

  _Initialized initialized({required List<QueryElement> sources}) {
    return _Initialized(
      sources: sources,
    );
  }

  _SourcesRequested sourcesRequested() {
    return const _SourcesRequested();
  }
}

/// @nodoc
const $QuerySourcesEvent = _$QuerySourcesEventTearOff();

/// @nodoc
mixin _$QuerySourcesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> sources) initialized,
    required TResult Function() sourcesRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> sources)? initialized,
    TResult Function()? sourcesRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SourcesRequested value) sourcesRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SourcesRequested value)? sourcesRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuerySourcesEventCopyWith<$Res> {
  factory $QuerySourcesEventCopyWith(
          QuerySourcesEvent value, $Res Function(QuerySourcesEvent) then) =
      _$QuerySourcesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuerySourcesEventCopyWithImpl<$Res>
    implements $QuerySourcesEventCopyWith<$Res> {
  _$QuerySourcesEventCopyWithImpl(this._value, this._then);

  final QuerySourcesEvent _value;
  // ignore: unused_field
  final $Res Function(QuerySourcesEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<QueryElement> sources});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QuerySourcesEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? sources = freezed,
  }) {
    return _then(_Initialized(
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.sources});

  @override
  final List<QueryElement> sources;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySourcesEvent.initialized(sources: $sources)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySourcesEvent.initialized'))
      ..add(DiagnosticsProperty('sources', sources));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality().equals(other.sources, sources)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sources);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> sources) initialized,
    required TResult Function() sourcesRequested,
  }) {
    return initialized(sources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> sources)? initialized,
    TResult Function()? sourcesRequested,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(sources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SourcesRequested value) sourcesRequested,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SourcesRequested value)? sourcesRequested,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QuerySourcesEvent {
  const factory _Initialized({required List<QueryElement> sources}) =
      _$_Initialized;

  List<QueryElement> get sources => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SourcesRequestedCopyWith<$Res> {
  factory _$SourcesRequestedCopyWith(
          _SourcesRequested value, $Res Function(_SourcesRequested) then) =
      __$SourcesRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SourcesRequestedCopyWithImpl<$Res>
    extends _$QuerySourcesEventCopyWithImpl<$Res>
    implements _$SourcesRequestedCopyWith<$Res> {
  __$SourcesRequestedCopyWithImpl(
      _SourcesRequested _value, $Res Function(_SourcesRequested) _then)
      : super(_value, (v) => _then(v as _SourcesRequested));

  @override
  _SourcesRequested get _value => super._value as _SourcesRequested;
}

/// @nodoc

class _$_SourcesRequested
    with DiagnosticableTreeMixin
    implements _SourcesRequested {
  const _$_SourcesRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySourcesEvent.sourcesRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySourcesEvent.sourcesRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SourcesRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> sources) initialized,
    required TResult Function() sourcesRequested,
  }) {
    return sourcesRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> sources)? initialized,
    TResult Function()? sourcesRequested,
    required TResult orElse(),
  }) {
    if (sourcesRequested != null) {
      return sourcesRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SourcesRequested value) sourcesRequested,
  }) {
    return sourcesRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SourcesRequested value)? sourcesRequested,
    required TResult orElse(),
  }) {
    if (sourcesRequested != null) {
      return sourcesRequested(this);
    }
    return orElse();
  }
}

abstract class _SourcesRequested implements QuerySourcesEvent {
  const factory _SourcesRequested() = _$_SourcesRequested;
}

/// @nodoc
class _$QuerySourcesStateTearOff {
  const _$QuerySourcesStateTearOff();

  _QueryFieldsState call({required List<QueryElement> sources}) {
    return _QueryFieldsState(
      sources: sources,
    );
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess({required List<QueryElement> sources}) {
    return _LoadSuccess(
      sources: sources,
    );
  }

  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }

  SourcesChanged sourcesChanged({required List<QueryElement> sources}) {
    return SourcesChanged(
      sources: sources,
    );
  }
}

/// @nodoc
const $QuerySourcesState = _$QuerySourcesStateTearOff();

/// @nodoc
mixin _$QuerySourcesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<QueryElement> sources) $default, {
    required TResult Function() loadInProgress,
    required TResult Function(List<QueryElement> sources) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<QueryElement> sources) sourcesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<QueryElement> sources)? $default, {
    TResult Function()? loadInProgress,
    TResult Function(List<QueryElement> sources)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<QueryElement> sources)? sourcesChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QueryFieldsState value) $default, {
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(SourcesChanged value) sourcesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QueryFieldsState value)? $default, {
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(SourcesChanged value)? sourcesChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuerySourcesStateCopyWith<$Res> {
  factory $QuerySourcesStateCopyWith(
          QuerySourcesState value, $Res Function(QuerySourcesState) then) =
      _$QuerySourcesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuerySourcesStateCopyWithImpl<$Res>
    implements $QuerySourcesStateCopyWith<$Res> {
  _$QuerySourcesStateCopyWithImpl(this._value, this._then);

  final QuerySourcesState _value;
  // ignore: unused_field
  final $Res Function(QuerySourcesState) _then;
}

/// @nodoc
abstract class _$QueryFieldsStateCopyWith<$Res> {
  factory _$QueryFieldsStateCopyWith(
          _QueryFieldsState value, $Res Function(_QueryFieldsState) then) =
      __$QueryFieldsStateCopyWithImpl<$Res>;
  $Res call({List<QueryElement> sources});
}

/// @nodoc
class __$QueryFieldsStateCopyWithImpl<$Res>
    extends _$QuerySourcesStateCopyWithImpl<$Res>
    implements _$QueryFieldsStateCopyWith<$Res> {
  __$QueryFieldsStateCopyWithImpl(
      _QueryFieldsState _value, $Res Function(_QueryFieldsState) _then)
      : super(_value, (v) => _then(v as _QueryFieldsState));

  @override
  _QueryFieldsState get _value => super._value as _QueryFieldsState;

  @override
  $Res call({
    Object? sources = freezed,
  }) {
    return _then(_QueryFieldsState(
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc

class _$_QueryFieldsState
    with DiagnosticableTreeMixin
    implements _QueryFieldsState {
  const _$_QueryFieldsState({required this.sources});

  @override
  final List<QueryElement> sources;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySourcesState(sources: $sources)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySourcesState'))
      ..add(DiagnosticsProperty('sources', sources));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryFieldsState &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality().equals(other.sources, sources)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sources);

  @JsonKey(ignore: true)
  @override
  _$QueryFieldsStateCopyWith<_QueryFieldsState> get copyWith =>
      __$QueryFieldsStateCopyWithImpl<_QueryFieldsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<QueryElement> sources) $default, {
    required TResult Function() loadInProgress,
    required TResult Function(List<QueryElement> sources) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<QueryElement> sources) sourcesChanged,
  }) {
    return $default(sources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<QueryElement> sources)? $default, {
    TResult Function()? loadInProgress,
    TResult Function(List<QueryElement> sources)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<QueryElement> sources)? sourcesChanged,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(sources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QueryFieldsState value) $default, {
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(SourcesChanged value) sourcesChanged,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QueryFieldsState value)? $default, {
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(SourcesChanged value)? sourcesChanged,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _QueryFieldsState implements QuerySourcesState {
  const factory _QueryFieldsState({required List<QueryElement> sources}) =
      _$_QueryFieldsState;

  List<QueryElement> get sources => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryFieldsStateCopyWith<_QueryFieldsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$QuerySourcesStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress
    with DiagnosticableTreeMixin
    implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySourcesState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySourcesState.loadInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<QueryElement> sources) $default, {
    required TResult Function() loadInProgress,
    required TResult Function(List<QueryElement> sources) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<QueryElement> sources) sourcesChanged,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<QueryElement> sources)? $default, {
    TResult Function()? loadInProgress,
    TResult Function(List<QueryElement> sources)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<QueryElement> sources)? sourcesChanged,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QueryFieldsState value) $default, {
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(SourcesChanged value) sourcesChanged,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QueryFieldsState value)? $default, {
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(SourcesChanged value)? sourcesChanged,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements QuerySourcesState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<QueryElement> sources});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$QuerySourcesStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? sources = freezed,
  }) {
    return _then(_LoadSuccess(
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess with DiagnosticableTreeMixin implements _LoadSuccess {
  const _$_LoadSuccess({required this.sources});

  @override
  final List<QueryElement> sources;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySourcesState.loadSuccess(sources: $sources)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySourcesState.loadSuccess'))
      ..add(DiagnosticsProperty('sources', sources));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality().equals(other.sources, sources)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sources);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<QueryElement> sources) $default, {
    required TResult Function() loadInProgress,
    required TResult Function(List<QueryElement> sources) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<QueryElement> sources) sourcesChanged,
  }) {
    return loadSuccess(sources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<QueryElement> sources)? $default, {
    TResult Function()? loadInProgress,
    TResult Function(List<QueryElement> sources)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<QueryElement> sources)? sourcesChanged,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(sources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QueryFieldsState value) $default, {
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(SourcesChanged value) sourcesChanged,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QueryFieldsState value)? $default, {
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(SourcesChanged value)? sourcesChanged,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements QuerySourcesState {
  const factory _LoadSuccess({required List<QueryElement> sources}) =
      _$_LoadSuccess;

  List<QueryElement> get sources => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$QuerySourcesStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

/// @nodoc

class _$_LoadFailure with DiagnosticableTreeMixin implements _LoadFailure {
  const _$_LoadFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySourcesState.loadFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySourcesState.loadFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<QueryElement> sources) $default, {
    required TResult Function() loadInProgress,
    required TResult Function(List<QueryElement> sources) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<QueryElement> sources) sourcesChanged,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<QueryElement> sources)? $default, {
    TResult Function()? loadInProgress,
    TResult Function(List<QueryElement> sources)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<QueryElement> sources)? sourcesChanged,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QueryFieldsState value) $default, {
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(SourcesChanged value) sourcesChanged,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QueryFieldsState value)? $default, {
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(SourcesChanged value)? sourcesChanged,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements QuerySourcesState {
  const factory _LoadFailure() = _$_LoadFailure;
}

/// @nodoc
abstract class $SourcesChangedCopyWith<$Res> {
  factory $SourcesChangedCopyWith(
          SourcesChanged value, $Res Function(SourcesChanged) then) =
      _$SourcesChangedCopyWithImpl<$Res>;
  $Res call({List<QueryElement> sources});
}

/// @nodoc
class _$SourcesChangedCopyWithImpl<$Res>
    extends _$QuerySourcesStateCopyWithImpl<$Res>
    implements $SourcesChangedCopyWith<$Res> {
  _$SourcesChangedCopyWithImpl(
      SourcesChanged _value, $Res Function(SourcesChanged) _then)
      : super(_value, (v) => _then(v as SourcesChanged));

  @override
  SourcesChanged get _value => super._value as SourcesChanged;

  @override
  $Res call({
    Object? sources = freezed,
  }) {
    return _then(SourcesChanged(
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc

class _$SourcesChanged with DiagnosticableTreeMixin implements SourcesChanged {
  const _$SourcesChanged({required this.sources});

  @override
  final List<QueryElement> sources;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySourcesState.sourcesChanged(sources: $sources)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySourcesState.sourcesChanged'))
      ..add(DiagnosticsProperty('sources', sources));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SourcesChanged &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality().equals(other.sources, sources)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sources);

  @JsonKey(ignore: true)
  @override
  $SourcesChangedCopyWith<SourcesChanged> get copyWith =>
      _$SourcesChangedCopyWithImpl<SourcesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<QueryElement> sources) $default, {
    required TResult Function() loadInProgress,
    required TResult Function(List<QueryElement> sources) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function(List<QueryElement> sources) sourcesChanged,
  }) {
    return sourcesChanged(sources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<QueryElement> sources)? $default, {
    TResult Function()? loadInProgress,
    TResult Function(List<QueryElement> sources)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function(List<QueryElement> sources)? sourcesChanged,
    required TResult orElse(),
  }) {
    if (sourcesChanged != null) {
      return sourcesChanged(sources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QueryFieldsState value) $default, {
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(SourcesChanged value) sourcesChanged,
  }) {
    return sourcesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QueryFieldsState value)? $default, {
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(SourcesChanged value)? sourcesChanged,
    required TResult orElse(),
  }) {
    if (sourcesChanged != null) {
      return sourcesChanged(this);
    }
    return orElse();
  }
}

abstract class SourcesChanged implements QuerySourcesState {
  const factory SourcesChanged({required List<QueryElement> sources}) =
      _$SourcesChanged;

  List<QueryElement> get sources => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourcesChangedCopyWith<SourcesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
