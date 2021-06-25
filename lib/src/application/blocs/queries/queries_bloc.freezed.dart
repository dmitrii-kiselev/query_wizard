// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'queries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueriesEventTearOff {
  const _$QueriesEventTearOff();

  _Initialized initialized({required List<Query> queries}) {
    return _Initialized(
      queries: queries,
    );
  }

  _QueryAdded queryAdded({required Query query}) {
    return _QueryAdded(
      query: query,
    );
  }

  _QueryCopied queryCopied({required Query query}) {
    return _QueryCopied(
      query: query,
    );
  }

  _QueryDeleted queryDeleted({required int index}) {
    return _QueryDeleted(
      index: index,
    );
  }

  _QueryOrderChanged queryOrderChanged(
      {required int oldIndex, required int newIndex}) {
    return _QueryOrderChanged(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $QueriesEvent = _$QueriesEventTearOff();

/// @nodoc
mixin _$QueriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Query> queries) initialized,
    required TResult Function(Query query) queryAdded,
    required TResult Function(Query query) queryCopied,
    required TResult Function(int index) queryDeleted,
    required TResult Function(int oldIndex, int newIndex) queryOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Query> queries)? initialized,
    TResult Function(Query query)? queryAdded,
    TResult Function(Query query)? queryCopied,
    TResult Function(int index)? queryDeleted,
    TResult Function(int oldIndex, int newIndex)? queryOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryAdded value) queryAdded,
    required TResult Function(_QueryCopied value) queryCopied,
    required TResult Function(_QueryDeleted value) queryDeleted,
    required TResult Function(_QueryOrderChanged value) queryOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryAdded value)? queryAdded,
    TResult Function(_QueryCopied value)? queryCopied,
    TResult Function(_QueryDeleted value)? queryDeleted,
    TResult Function(_QueryOrderChanged value)? queryOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueriesEventCopyWith<$Res> {
  factory $QueriesEventCopyWith(
          QueriesEvent value, $Res Function(QueriesEvent) then) =
      _$QueriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueriesEventCopyWithImpl<$Res> implements $QueriesEventCopyWith<$Res> {
  _$QueriesEventCopyWithImpl(this._value, this._then);

  final QueriesEvent _value;
  // ignore: unused_field
  final $Res Function(QueriesEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<Query> queries});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$QueriesEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? queries = freezed,
  }) {
    return _then(_Initialized(
      queries: queries == freezed
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<Query>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.queries});

  @override
  final List<Query> queries;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueriesEvent.initialized(queries: $queries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueriesEvent.initialized'))
      ..add(DiagnosticsProperty('queries', queries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.queries, queries) ||
                const DeepCollectionEquality().equals(other.queries, queries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queries);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Query> queries) initialized,
    required TResult Function(Query query) queryAdded,
    required TResult Function(Query query) queryCopied,
    required TResult Function(int index) queryDeleted,
    required TResult Function(int oldIndex, int newIndex) queryOrderChanged,
  }) {
    return initialized(queries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Query> queries)? initialized,
    TResult Function(Query query)? queryAdded,
    TResult Function(Query query)? queryCopied,
    TResult Function(int index)? queryDeleted,
    TResult Function(int oldIndex, int newIndex)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(queries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryAdded value) queryAdded,
    required TResult Function(_QueryCopied value) queryCopied,
    required TResult Function(_QueryDeleted value) queryDeleted,
    required TResult Function(_QueryOrderChanged value) queryOrderChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryAdded value)? queryAdded,
    TResult Function(_QueryCopied value)? queryCopied,
    TResult Function(_QueryDeleted value)? queryDeleted,
    TResult Function(_QueryOrderChanged value)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueriesEvent {
  const factory _Initialized({required List<Query> queries}) = _$_Initialized;

  List<Query> get queries => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryAddedCopyWith<$Res> {
  factory _$QueryAddedCopyWith(
          _QueryAdded value, $Res Function(_QueryAdded) then) =
      __$QueryAddedCopyWithImpl<$Res>;
  $Res call({Query query});

  $QueryCopyWith<$Res> get query;
}

/// @nodoc
class __$QueryAddedCopyWithImpl<$Res> extends _$QueriesEventCopyWithImpl<$Res>
    implements _$QueryAddedCopyWith<$Res> {
  __$QueryAddedCopyWithImpl(
      _QueryAdded _value, $Res Function(_QueryAdded) _then)
      : super(_value, (v) => _then(v as _QueryAdded));

  @override
  _QueryAdded get _value => super._value as _QueryAdded;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_QueryAdded(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Query,
    ));
  }

  @override
  $QueryCopyWith<$Res> get query {
    return $QueryCopyWith<$Res>(_value.query, (value) {
      return _then(_value.copyWith(query: value));
    });
  }
}

/// @nodoc

class _$_QueryAdded with DiagnosticableTreeMixin implements _QueryAdded {
  const _$_QueryAdded({required this.query});

  @override
  final Query query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueriesEvent.queryAdded(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueriesEvent.queryAdded'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryAdded &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$QueryAddedCopyWith<_QueryAdded> get copyWith =>
      __$QueryAddedCopyWithImpl<_QueryAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Query> queries) initialized,
    required TResult Function(Query query) queryAdded,
    required TResult Function(Query query) queryCopied,
    required TResult Function(int index) queryDeleted,
    required TResult Function(int oldIndex, int newIndex) queryOrderChanged,
  }) {
    return queryAdded(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Query> queries)? initialized,
    TResult Function(Query query)? queryAdded,
    TResult Function(Query query)? queryCopied,
    TResult Function(int index)? queryDeleted,
    TResult Function(int oldIndex, int newIndex)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (queryAdded != null) {
      return queryAdded(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryAdded value) queryAdded,
    required TResult Function(_QueryCopied value) queryCopied,
    required TResult Function(_QueryDeleted value) queryDeleted,
    required TResult Function(_QueryOrderChanged value) queryOrderChanged,
  }) {
    return queryAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryAdded value)? queryAdded,
    TResult Function(_QueryCopied value)? queryCopied,
    TResult Function(_QueryDeleted value)? queryDeleted,
    TResult Function(_QueryOrderChanged value)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (queryAdded != null) {
      return queryAdded(this);
    }
    return orElse();
  }
}

abstract class _QueryAdded implements QueriesEvent {
  const factory _QueryAdded({required Query query}) = _$_QueryAdded;

  Query get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryAddedCopyWith<_QueryAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryCopiedCopyWith<$Res> {
  factory _$QueryCopiedCopyWith(
          _QueryCopied value, $Res Function(_QueryCopied) then) =
      __$QueryCopiedCopyWithImpl<$Res>;
  $Res call({Query query});

  $QueryCopyWith<$Res> get query;
}

/// @nodoc
class __$QueryCopiedCopyWithImpl<$Res> extends _$QueriesEventCopyWithImpl<$Res>
    implements _$QueryCopiedCopyWith<$Res> {
  __$QueryCopiedCopyWithImpl(
      _QueryCopied _value, $Res Function(_QueryCopied) _then)
      : super(_value, (v) => _then(v as _QueryCopied));

  @override
  _QueryCopied get _value => super._value as _QueryCopied;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_QueryCopied(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Query,
    ));
  }

  @override
  $QueryCopyWith<$Res> get query {
    return $QueryCopyWith<$Res>(_value.query, (value) {
      return _then(_value.copyWith(query: value));
    });
  }
}

/// @nodoc

class _$_QueryCopied with DiagnosticableTreeMixin implements _QueryCopied {
  const _$_QueryCopied({required this.query});

  @override
  final Query query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueriesEvent.queryCopied(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueriesEvent.queryCopied'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryCopied &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$QueryCopiedCopyWith<_QueryCopied> get copyWith =>
      __$QueryCopiedCopyWithImpl<_QueryCopied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Query> queries) initialized,
    required TResult Function(Query query) queryAdded,
    required TResult Function(Query query) queryCopied,
    required TResult Function(int index) queryDeleted,
    required TResult Function(int oldIndex, int newIndex) queryOrderChanged,
  }) {
    return queryCopied(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Query> queries)? initialized,
    TResult Function(Query query)? queryAdded,
    TResult Function(Query query)? queryCopied,
    TResult Function(int index)? queryDeleted,
    TResult Function(int oldIndex, int newIndex)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (queryCopied != null) {
      return queryCopied(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryAdded value) queryAdded,
    required TResult Function(_QueryCopied value) queryCopied,
    required TResult Function(_QueryDeleted value) queryDeleted,
    required TResult Function(_QueryOrderChanged value) queryOrderChanged,
  }) {
    return queryCopied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryAdded value)? queryAdded,
    TResult Function(_QueryCopied value)? queryCopied,
    TResult Function(_QueryDeleted value)? queryDeleted,
    TResult Function(_QueryOrderChanged value)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (queryCopied != null) {
      return queryCopied(this);
    }
    return orElse();
  }
}

abstract class _QueryCopied implements QueriesEvent {
  const factory _QueryCopied({required Query query}) = _$_QueryCopied;

  Query get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryCopiedCopyWith<_QueryCopied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryDeletedCopyWith<$Res> {
  factory _$QueryDeletedCopyWith(
          _QueryDeleted value, $Res Function(_QueryDeleted) then) =
      __$QueryDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$QueryDeletedCopyWithImpl<$Res> extends _$QueriesEventCopyWithImpl<$Res>
    implements _$QueryDeletedCopyWith<$Res> {
  __$QueryDeletedCopyWithImpl(
      _QueryDeleted _value, $Res Function(_QueryDeleted) _then)
      : super(_value, (v) => _then(v as _QueryDeleted));

  @override
  _QueryDeleted get _value => super._value as _QueryDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_QueryDeleted(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QueryDeleted with DiagnosticableTreeMixin implements _QueryDeleted {
  const _$_QueryDeleted({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueriesEvent.queryDeleted(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueriesEvent.queryDeleted'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$QueryDeletedCopyWith<_QueryDeleted> get copyWith =>
      __$QueryDeletedCopyWithImpl<_QueryDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Query> queries) initialized,
    required TResult Function(Query query) queryAdded,
    required TResult Function(Query query) queryCopied,
    required TResult Function(int index) queryDeleted,
    required TResult Function(int oldIndex, int newIndex) queryOrderChanged,
  }) {
    return queryDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Query> queries)? initialized,
    TResult Function(Query query)? queryAdded,
    TResult Function(Query query)? queryCopied,
    TResult Function(int index)? queryDeleted,
    TResult Function(int oldIndex, int newIndex)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (queryDeleted != null) {
      return queryDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryAdded value) queryAdded,
    required TResult Function(_QueryCopied value) queryCopied,
    required TResult Function(_QueryDeleted value) queryDeleted,
    required TResult Function(_QueryOrderChanged value) queryOrderChanged,
  }) {
    return queryDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryAdded value)? queryAdded,
    TResult Function(_QueryCopied value)? queryCopied,
    TResult Function(_QueryDeleted value)? queryDeleted,
    TResult Function(_QueryOrderChanged value)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (queryDeleted != null) {
      return queryDeleted(this);
    }
    return orElse();
  }
}

abstract class _QueryDeleted implements QueriesEvent {
  const factory _QueryDeleted({required int index}) = _$_QueryDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryDeletedCopyWith<_QueryDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryOrderChangedCopyWith<$Res> {
  factory _$QueryOrderChangedCopyWith(
          _QueryOrderChanged value, $Res Function(_QueryOrderChanged) then) =
      __$QueryOrderChangedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$QueryOrderChangedCopyWithImpl<$Res>
    extends _$QueriesEventCopyWithImpl<$Res>
    implements _$QueryOrderChangedCopyWith<$Res> {
  __$QueryOrderChangedCopyWithImpl(
      _QueryOrderChanged _value, $Res Function(_QueryOrderChanged) _then)
      : super(_value, (v) => _then(v as _QueryOrderChanged));

  @override
  _QueryOrderChanged get _value => super._value as _QueryOrderChanged;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_QueryOrderChanged(
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

class _$_QueryOrderChanged
    with DiagnosticableTreeMixin
    implements _QueryOrderChanged {
  const _$_QueryOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueriesEvent.queryOrderChanged(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueriesEvent.queryOrderChanged'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryOrderChanged &&
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
  _$QueryOrderChangedCopyWith<_QueryOrderChanged> get copyWith =>
      __$QueryOrderChangedCopyWithImpl<_QueryOrderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Query> queries) initialized,
    required TResult Function(Query query) queryAdded,
    required TResult Function(Query query) queryCopied,
    required TResult Function(int index) queryDeleted,
    required TResult Function(int oldIndex, int newIndex) queryOrderChanged,
  }) {
    return queryOrderChanged(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Query> queries)? initialized,
    TResult Function(Query query)? queryAdded,
    TResult Function(Query query)? queryCopied,
    TResult Function(int index)? queryDeleted,
    TResult Function(int oldIndex, int newIndex)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (queryOrderChanged != null) {
      return queryOrderChanged(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryAdded value) queryAdded,
    required TResult Function(_QueryCopied value) queryCopied,
    required TResult Function(_QueryDeleted value) queryDeleted,
    required TResult Function(_QueryOrderChanged value) queryOrderChanged,
  }) {
    return queryOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryAdded value)? queryAdded,
    TResult Function(_QueryCopied value)? queryCopied,
    TResult Function(_QueryDeleted value)? queryDeleted,
    TResult Function(_QueryOrderChanged value)? queryOrderChanged,
    required TResult orElse(),
  }) {
    if (queryOrderChanged != null) {
      return queryOrderChanged(this);
    }
    return orElse();
  }
}

abstract class _QueryOrderChanged implements QueriesEvent {
  const factory _QueryOrderChanged(
      {required int oldIndex, required int newIndex}) = _$_QueryOrderChanged;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryOrderChangedCopyWith<_QueryOrderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueriesStateTearOff {
  const _$QueriesStateTearOff();

  _QueriesState call({required bool isChanging, required List<Query> queries}) {
    return _QueriesState(
      isChanging: isChanging,
      queries: queries,
    );
  }
}

/// @nodoc
const $QueriesState = _$QueriesStateTearOff();

/// @nodoc
mixin _$QueriesState {
  bool get isChanging => throw _privateConstructorUsedError;
  List<Query> get queries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueriesStateCopyWith<QueriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueriesStateCopyWith<$Res> {
  factory $QueriesStateCopyWith(
          QueriesState value, $Res Function(QueriesState) then) =
      _$QueriesStateCopyWithImpl<$Res>;
  $Res call({bool isChanging, List<Query> queries});
}

/// @nodoc
class _$QueriesStateCopyWithImpl<$Res> implements $QueriesStateCopyWith<$Res> {
  _$QueriesStateCopyWithImpl(this._value, this._then);

  final QueriesState _value;
  // ignore: unused_field
  final $Res Function(QueriesState) _then;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? queries = freezed,
  }) {
    return _then(_value.copyWith(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      queries: queries == freezed
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<Query>,
    ));
  }
}

/// @nodoc
abstract class _$QueriesStateCopyWith<$Res>
    implements $QueriesStateCopyWith<$Res> {
  factory _$QueriesStateCopyWith(
          _QueriesState value, $Res Function(_QueriesState) then) =
      __$QueriesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isChanging, List<Query> queries});
}

/// @nodoc
class __$QueriesStateCopyWithImpl<$Res> extends _$QueriesStateCopyWithImpl<$Res>
    implements _$QueriesStateCopyWith<$Res> {
  __$QueriesStateCopyWithImpl(
      _QueriesState _value, $Res Function(_QueriesState) _then)
      : super(_value, (v) => _then(v as _QueriesState));

  @override
  _QueriesState get _value => super._value as _QueriesState;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? queries = freezed,
  }) {
    return _then(_QueriesState(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      queries: queries == freezed
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<Query>,
    ));
  }
}

/// @nodoc

class _$_QueriesState with DiagnosticableTreeMixin implements _QueriesState {
  const _$_QueriesState({required this.isChanging, required this.queries});

  @override
  final bool isChanging;
  @override
  final List<Query> queries;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueriesState(isChanging: $isChanging, queries: $queries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueriesState'))
      ..add(DiagnosticsProperty('isChanging', isChanging))
      ..add(DiagnosticsProperty('queries', queries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueriesState &&
            (identical(other.isChanging, isChanging) ||
                const DeepCollectionEquality()
                    .equals(other.isChanging, isChanging)) &&
            (identical(other.queries, queries) ||
                const DeepCollectionEquality().equals(other.queries, queries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isChanging) ^
      const DeepCollectionEquality().hash(queries);

  @JsonKey(ignore: true)
  @override
  _$QueriesStateCopyWith<_QueriesState> get copyWith =>
      __$QueriesStateCopyWithImpl<_QueriesState>(this, _$identity);
}

abstract class _QueriesState implements QueriesState {
  const factory _QueriesState(
      {required bool isChanging,
      required List<Query> queries}) = _$_QueriesState;

  @override
  bool get isChanging => throw _privateConstructorUsedError;
  @override
  List<Query> get queries => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueriesStateCopyWith<_QueriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
