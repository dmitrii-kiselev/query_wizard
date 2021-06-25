// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_tables_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryTablesEventTearOff {
  const _$QueryTablesEventTearOff();

  _Initialized initialized({required List<QueryElement> tables}) {
    return _Initialized(
      tables: tables,
    );
  }

  _QueryTablesAdded tableAdded({required QueryElement table}) {
    return _QueryTablesAdded(
      table: table,
    );
  }

  _QueryTableUpdated tableUpdated(
      {required int index, required QueryElement table}) {
    return _QueryTableUpdated(
      index: index,
      table: table,
    );
  }

  _QueryTablesCopied tableCopied({required QueryElement table}) {
    return _QueryTablesCopied(
      table: table,
    );
  }

  _QueryTablesDeleted tableDeleted({required int index}) {
    return _QueryTablesDeleted(
      index: index,
    );
  }

  _QueryTablesOrderChanged tableOrderChanged(
      {required int oldIndex, required int newIndex}) {
    return _QueryTablesOrderChanged(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $QueryTablesEvent = _$QueryTablesEventTearOff();

/// @nodoc
mixin _$QueryTablesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> tables) initialized,
    required TResult Function(QueryElement table) tableAdded,
    required TResult Function(int index, QueryElement table) tableUpdated,
    required TResult Function(QueryElement table) tableCopied,
    required TResult Function(int index) tableDeleted,
    required TResult Function(int oldIndex, int newIndex) tableOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> tables)? initialized,
    TResult Function(QueryElement table)? tableAdded,
    TResult Function(int index, QueryElement table)? tableUpdated,
    TResult Function(QueryElement table)? tableCopied,
    TResult Function(int index)? tableDeleted,
    TResult Function(int oldIndex, int newIndex)? tableOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryTablesAdded value) tableAdded,
    required TResult Function(_QueryTableUpdated value) tableUpdated,
    required TResult Function(_QueryTablesCopied value) tableCopied,
    required TResult Function(_QueryTablesDeleted value) tableDeleted,
    required TResult Function(_QueryTablesOrderChanged value) tableOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryTablesAdded value)? tableAdded,
    TResult Function(_QueryTableUpdated value)? tableUpdated,
    TResult Function(_QueryTablesCopied value)? tableCopied,
    TResult Function(_QueryTablesDeleted value)? tableDeleted,
    TResult Function(_QueryTablesOrderChanged value)? tableOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryTablesEventCopyWith<$Res> {
  factory $QueryTablesEventCopyWith(
          QueryTablesEvent value, $Res Function(QueryTablesEvent) then) =
      _$QueryTablesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryTablesEventCopyWithImpl<$Res>
    implements $QueryTablesEventCopyWith<$Res> {
  _$QueryTablesEventCopyWithImpl(this._value, this._then);

  final QueryTablesEvent _value;
  // ignore: unused_field
  final $Res Function(QueryTablesEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<QueryElement> tables});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QueryTablesEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? tables = freezed,
  }) {
    return _then(_Initialized(
      tables: tables == freezed
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.tables});

  @override
  final List<QueryElement> tables;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryTablesEvent.initialized(tables: $tables)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryTablesEvent.initialized'))
      ..add(DiagnosticsProperty('tables', tables));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.tables, tables) ||
                const DeepCollectionEquality().equals(other.tables, tables)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tables);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> tables) initialized,
    required TResult Function(QueryElement table) tableAdded,
    required TResult Function(int index, QueryElement table) tableUpdated,
    required TResult Function(QueryElement table) tableCopied,
    required TResult Function(int index) tableDeleted,
    required TResult Function(int oldIndex, int newIndex) tableOrderChanged,
  }) {
    return initialized(tables);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> tables)? initialized,
    TResult Function(QueryElement table)? tableAdded,
    TResult Function(int index, QueryElement table)? tableUpdated,
    TResult Function(QueryElement table)? tableCopied,
    TResult Function(int index)? tableDeleted,
    TResult Function(int oldIndex, int newIndex)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(tables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryTablesAdded value) tableAdded,
    required TResult Function(_QueryTableUpdated value) tableUpdated,
    required TResult Function(_QueryTablesCopied value) tableCopied,
    required TResult Function(_QueryTablesDeleted value) tableDeleted,
    required TResult Function(_QueryTablesOrderChanged value) tableOrderChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryTablesAdded value)? tableAdded,
    TResult Function(_QueryTableUpdated value)? tableUpdated,
    TResult Function(_QueryTablesCopied value)? tableCopied,
    TResult Function(_QueryTablesDeleted value)? tableDeleted,
    TResult Function(_QueryTablesOrderChanged value)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueryTablesEvent {
  const factory _Initialized({required List<QueryElement> tables}) =
      _$_Initialized;

  List<QueryElement> get tables => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryTablesAddedCopyWith<$Res> {
  factory _$QueryTablesAddedCopyWith(
          _QueryTablesAdded value, $Res Function(_QueryTablesAdded) then) =
      __$QueryTablesAddedCopyWithImpl<$Res>;
  $Res call({QueryElement table});

  $QueryElementCopyWith<$Res> get table;
}

/// @nodoc
class __$QueryTablesAddedCopyWithImpl<$Res>
    extends _$QueryTablesEventCopyWithImpl<$Res>
    implements _$QueryTablesAddedCopyWith<$Res> {
  __$QueryTablesAddedCopyWithImpl(
      _QueryTablesAdded _value, $Res Function(_QueryTablesAdded) _then)
      : super(_value, (v) => _then(v as _QueryTablesAdded));

  @override
  _QueryTablesAdded get _value => super._value as _QueryTablesAdded;

  @override
  $Res call({
    Object? table = freezed,
  }) {
    return _then(_QueryTablesAdded(
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as QueryElement,
    ));
  }

  @override
  $QueryElementCopyWith<$Res> get table {
    return $QueryElementCopyWith<$Res>(_value.table, (value) {
      return _then(_value.copyWith(table: value));
    });
  }
}

/// @nodoc

class _$_QueryTablesAdded
    with DiagnosticableTreeMixin
    implements _QueryTablesAdded {
  const _$_QueryTablesAdded({required this.table});

  @override
  final QueryElement table;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryTablesEvent.tableAdded(table: $table)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryTablesEvent.tableAdded'))
      ..add(DiagnosticsProperty('table', table));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryTablesAdded &&
            (identical(other.table, table) ||
                const DeepCollectionEquality().equals(other.table, table)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(table);

  @JsonKey(ignore: true)
  @override
  _$QueryTablesAddedCopyWith<_QueryTablesAdded> get copyWith =>
      __$QueryTablesAddedCopyWithImpl<_QueryTablesAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> tables) initialized,
    required TResult Function(QueryElement table) tableAdded,
    required TResult Function(int index, QueryElement table) tableUpdated,
    required TResult Function(QueryElement table) tableCopied,
    required TResult Function(int index) tableDeleted,
    required TResult Function(int oldIndex, int newIndex) tableOrderChanged,
  }) {
    return tableAdded(table);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> tables)? initialized,
    TResult Function(QueryElement table)? tableAdded,
    TResult Function(int index, QueryElement table)? tableUpdated,
    TResult Function(QueryElement table)? tableCopied,
    TResult Function(int index)? tableDeleted,
    TResult Function(int oldIndex, int newIndex)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableAdded != null) {
      return tableAdded(table);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryTablesAdded value) tableAdded,
    required TResult Function(_QueryTableUpdated value) tableUpdated,
    required TResult Function(_QueryTablesCopied value) tableCopied,
    required TResult Function(_QueryTablesDeleted value) tableDeleted,
    required TResult Function(_QueryTablesOrderChanged value) tableOrderChanged,
  }) {
    return tableAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryTablesAdded value)? tableAdded,
    TResult Function(_QueryTableUpdated value)? tableUpdated,
    TResult Function(_QueryTablesCopied value)? tableCopied,
    TResult Function(_QueryTablesDeleted value)? tableDeleted,
    TResult Function(_QueryTablesOrderChanged value)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableAdded != null) {
      return tableAdded(this);
    }
    return orElse();
  }
}

abstract class _QueryTablesAdded implements QueryTablesEvent {
  const factory _QueryTablesAdded({required QueryElement table}) =
      _$_QueryTablesAdded;

  QueryElement get table => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryTablesAddedCopyWith<_QueryTablesAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryTableUpdatedCopyWith<$Res> {
  factory _$QueryTableUpdatedCopyWith(
          _QueryTableUpdated value, $Res Function(_QueryTableUpdated) then) =
      __$QueryTableUpdatedCopyWithImpl<$Res>;
  $Res call({int index, QueryElement table});

  $QueryElementCopyWith<$Res> get table;
}

/// @nodoc
class __$QueryTableUpdatedCopyWithImpl<$Res>
    extends _$QueryTablesEventCopyWithImpl<$Res>
    implements _$QueryTableUpdatedCopyWith<$Res> {
  __$QueryTableUpdatedCopyWithImpl(
      _QueryTableUpdated _value, $Res Function(_QueryTableUpdated) _then)
      : super(_value, (v) => _then(v as _QueryTableUpdated));

  @override
  _QueryTableUpdated get _value => super._value as _QueryTableUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? table = freezed,
  }) {
    return _then(_QueryTableUpdated(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as QueryElement,
    ));
  }

  @override
  $QueryElementCopyWith<$Res> get table {
    return $QueryElementCopyWith<$Res>(_value.table, (value) {
      return _then(_value.copyWith(table: value));
    });
  }
}

/// @nodoc

class _$_QueryTableUpdated
    with DiagnosticableTreeMixin
    implements _QueryTableUpdated {
  const _$_QueryTableUpdated({required this.index, required this.table});

  @override
  final int index;
  @override
  final QueryElement table;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryTablesEvent.tableUpdated(index: $index, table: $table)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryTablesEvent.tableUpdated'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('table', table));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryTableUpdated &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.table, table) ||
                const DeepCollectionEquality().equals(other.table, table)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(table);

  @JsonKey(ignore: true)
  @override
  _$QueryTableUpdatedCopyWith<_QueryTableUpdated> get copyWith =>
      __$QueryTableUpdatedCopyWithImpl<_QueryTableUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> tables) initialized,
    required TResult Function(QueryElement table) tableAdded,
    required TResult Function(int index, QueryElement table) tableUpdated,
    required TResult Function(QueryElement table) tableCopied,
    required TResult Function(int index) tableDeleted,
    required TResult Function(int oldIndex, int newIndex) tableOrderChanged,
  }) {
    return tableUpdated(index, table);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> tables)? initialized,
    TResult Function(QueryElement table)? tableAdded,
    TResult Function(int index, QueryElement table)? tableUpdated,
    TResult Function(QueryElement table)? tableCopied,
    TResult Function(int index)? tableDeleted,
    TResult Function(int oldIndex, int newIndex)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableUpdated != null) {
      return tableUpdated(index, table);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryTablesAdded value) tableAdded,
    required TResult Function(_QueryTableUpdated value) tableUpdated,
    required TResult Function(_QueryTablesCopied value) tableCopied,
    required TResult Function(_QueryTablesDeleted value) tableDeleted,
    required TResult Function(_QueryTablesOrderChanged value) tableOrderChanged,
  }) {
    return tableUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryTablesAdded value)? tableAdded,
    TResult Function(_QueryTableUpdated value)? tableUpdated,
    TResult Function(_QueryTablesCopied value)? tableCopied,
    TResult Function(_QueryTablesDeleted value)? tableDeleted,
    TResult Function(_QueryTablesOrderChanged value)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableUpdated != null) {
      return tableUpdated(this);
    }
    return orElse();
  }
}

abstract class _QueryTableUpdated implements QueryTablesEvent {
  const factory _QueryTableUpdated(
      {required int index, required QueryElement table}) = _$_QueryTableUpdated;

  int get index => throw _privateConstructorUsedError;
  QueryElement get table => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryTableUpdatedCopyWith<_QueryTableUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryTablesCopiedCopyWith<$Res> {
  factory _$QueryTablesCopiedCopyWith(
          _QueryTablesCopied value, $Res Function(_QueryTablesCopied) then) =
      __$QueryTablesCopiedCopyWithImpl<$Res>;
  $Res call({QueryElement table});

  $QueryElementCopyWith<$Res> get table;
}

/// @nodoc
class __$QueryTablesCopiedCopyWithImpl<$Res>
    extends _$QueryTablesEventCopyWithImpl<$Res>
    implements _$QueryTablesCopiedCopyWith<$Res> {
  __$QueryTablesCopiedCopyWithImpl(
      _QueryTablesCopied _value, $Res Function(_QueryTablesCopied) _then)
      : super(_value, (v) => _then(v as _QueryTablesCopied));

  @override
  _QueryTablesCopied get _value => super._value as _QueryTablesCopied;

  @override
  $Res call({
    Object? table = freezed,
  }) {
    return _then(_QueryTablesCopied(
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as QueryElement,
    ));
  }

  @override
  $QueryElementCopyWith<$Res> get table {
    return $QueryElementCopyWith<$Res>(_value.table, (value) {
      return _then(_value.copyWith(table: value));
    });
  }
}

/// @nodoc

class _$_QueryTablesCopied
    with DiagnosticableTreeMixin
    implements _QueryTablesCopied {
  const _$_QueryTablesCopied({required this.table});

  @override
  final QueryElement table;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryTablesEvent.tableCopied(table: $table)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryTablesEvent.tableCopied'))
      ..add(DiagnosticsProperty('table', table));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryTablesCopied &&
            (identical(other.table, table) ||
                const DeepCollectionEquality().equals(other.table, table)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(table);

  @JsonKey(ignore: true)
  @override
  _$QueryTablesCopiedCopyWith<_QueryTablesCopied> get copyWith =>
      __$QueryTablesCopiedCopyWithImpl<_QueryTablesCopied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> tables) initialized,
    required TResult Function(QueryElement table) tableAdded,
    required TResult Function(int index, QueryElement table) tableUpdated,
    required TResult Function(QueryElement table) tableCopied,
    required TResult Function(int index) tableDeleted,
    required TResult Function(int oldIndex, int newIndex) tableOrderChanged,
  }) {
    return tableCopied(table);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> tables)? initialized,
    TResult Function(QueryElement table)? tableAdded,
    TResult Function(int index, QueryElement table)? tableUpdated,
    TResult Function(QueryElement table)? tableCopied,
    TResult Function(int index)? tableDeleted,
    TResult Function(int oldIndex, int newIndex)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableCopied != null) {
      return tableCopied(table);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryTablesAdded value) tableAdded,
    required TResult Function(_QueryTableUpdated value) tableUpdated,
    required TResult Function(_QueryTablesCopied value) tableCopied,
    required TResult Function(_QueryTablesDeleted value) tableDeleted,
    required TResult Function(_QueryTablesOrderChanged value) tableOrderChanged,
  }) {
    return tableCopied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryTablesAdded value)? tableAdded,
    TResult Function(_QueryTableUpdated value)? tableUpdated,
    TResult Function(_QueryTablesCopied value)? tableCopied,
    TResult Function(_QueryTablesDeleted value)? tableDeleted,
    TResult Function(_QueryTablesOrderChanged value)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableCopied != null) {
      return tableCopied(this);
    }
    return orElse();
  }
}

abstract class _QueryTablesCopied implements QueryTablesEvent {
  const factory _QueryTablesCopied({required QueryElement table}) =
      _$_QueryTablesCopied;

  QueryElement get table => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryTablesCopiedCopyWith<_QueryTablesCopied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryTablesDeletedCopyWith<$Res> {
  factory _$QueryTablesDeletedCopyWith(
          _QueryTablesDeleted value, $Res Function(_QueryTablesDeleted) then) =
      __$QueryTablesDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$QueryTablesDeletedCopyWithImpl<$Res>
    extends _$QueryTablesEventCopyWithImpl<$Res>
    implements _$QueryTablesDeletedCopyWith<$Res> {
  __$QueryTablesDeletedCopyWithImpl(
      _QueryTablesDeleted _value, $Res Function(_QueryTablesDeleted) _then)
      : super(_value, (v) => _then(v as _QueryTablesDeleted));

  @override
  _QueryTablesDeleted get _value => super._value as _QueryTablesDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_QueryTablesDeleted(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QueryTablesDeleted
    with DiagnosticableTreeMixin
    implements _QueryTablesDeleted {
  const _$_QueryTablesDeleted({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryTablesEvent.tableDeleted(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryTablesEvent.tableDeleted'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryTablesDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$QueryTablesDeletedCopyWith<_QueryTablesDeleted> get copyWith =>
      __$QueryTablesDeletedCopyWithImpl<_QueryTablesDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> tables) initialized,
    required TResult Function(QueryElement table) tableAdded,
    required TResult Function(int index, QueryElement table) tableUpdated,
    required TResult Function(QueryElement table) tableCopied,
    required TResult Function(int index) tableDeleted,
    required TResult Function(int oldIndex, int newIndex) tableOrderChanged,
  }) {
    return tableDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> tables)? initialized,
    TResult Function(QueryElement table)? tableAdded,
    TResult Function(int index, QueryElement table)? tableUpdated,
    TResult Function(QueryElement table)? tableCopied,
    TResult Function(int index)? tableDeleted,
    TResult Function(int oldIndex, int newIndex)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableDeleted != null) {
      return tableDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryTablesAdded value) tableAdded,
    required TResult Function(_QueryTableUpdated value) tableUpdated,
    required TResult Function(_QueryTablesCopied value) tableCopied,
    required TResult Function(_QueryTablesDeleted value) tableDeleted,
    required TResult Function(_QueryTablesOrderChanged value) tableOrderChanged,
  }) {
    return tableDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryTablesAdded value)? tableAdded,
    TResult Function(_QueryTableUpdated value)? tableUpdated,
    TResult Function(_QueryTablesCopied value)? tableCopied,
    TResult Function(_QueryTablesDeleted value)? tableDeleted,
    TResult Function(_QueryTablesOrderChanged value)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableDeleted != null) {
      return tableDeleted(this);
    }
    return orElse();
  }
}

abstract class _QueryTablesDeleted implements QueryTablesEvent {
  const factory _QueryTablesDeleted({required int index}) =
      _$_QueryTablesDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryTablesDeletedCopyWith<_QueryTablesDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryTablesOrderChangedCopyWith<$Res> {
  factory _$QueryTablesOrderChangedCopyWith(_QueryTablesOrderChanged value,
          $Res Function(_QueryTablesOrderChanged) then) =
      __$QueryTablesOrderChangedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$QueryTablesOrderChangedCopyWithImpl<$Res>
    extends _$QueryTablesEventCopyWithImpl<$Res>
    implements _$QueryTablesOrderChangedCopyWith<$Res> {
  __$QueryTablesOrderChangedCopyWithImpl(_QueryTablesOrderChanged _value,
      $Res Function(_QueryTablesOrderChanged) _then)
      : super(_value, (v) => _then(v as _QueryTablesOrderChanged));

  @override
  _QueryTablesOrderChanged get _value =>
      super._value as _QueryTablesOrderChanged;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_QueryTablesOrderChanged(
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

class _$_QueryTablesOrderChanged
    with DiagnosticableTreeMixin
    implements _QueryTablesOrderChanged {
  const _$_QueryTablesOrderChanged(
      {required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryTablesEvent.tableOrderChanged(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryTablesEvent.tableOrderChanged'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryTablesOrderChanged &&
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
  _$QueryTablesOrderChangedCopyWith<_QueryTablesOrderChanged> get copyWith =>
      __$QueryTablesOrderChangedCopyWithImpl<_QueryTablesOrderChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> tables) initialized,
    required TResult Function(QueryElement table) tableAdded,
    required TResult Function(int index, QueryElement table) tableUpdated,
    required TResult Function(QueryElement table) tableCopied,
    required TResult Function(int index) tableDeleted,
    required TResult Function(int oldIndex, int newIndex) tableOrderChanged,
  }) {
    return tableOrderChanged(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> tables)? initialized,
    TResult Function(QueryElement table)? tableAdded,
    TResult Function(int index, QueryElement table)? tableUpdated,
    TResult Function(QueryElement table)? tableCopied,
    TResult Function(int index)? tableDeleted,
    TResult Function(int oldIndex, int newIndex)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableOrderChanged != null) {
      return tableOrderChanged(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryTablesAdded value) tableAdded,
    required TResult Function(_QueryTableUpdated value) tableUpdated,
    required TResult Function(_QueryTablesCopied value) tableCopied,
    required TResult Function(_QueryTablesDeleted value) tableDeleted,
    required TResult Function(_QueryTablesOrderChanged value) tableOrderChanged,
  }) {
    return tableOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryTablesAdded value)? tableAdded,
    TResult Function(_QueryTableUpdated value)? tableUpdated,
    TResult Function(_QueryTablesCopied value)? tableCopied,
    TResult Function(_QueryTablesDeleted value)? tableDeleted,
    TResult Function(_QueryTablesOrderChanged value)? tableOrderChanged,
    required TResult orElse(),
  }) {
    if (tableOrderChanged != null) {
      return tableOrderChanged(this);
    }
    return orElse();
  }
}

abstract class _QueryTablesOrderChanged implements QueryTablesEvent {
  const factory _QueryTablesOrderChanged(
      {required int oldIndex,
      required int newIndex}) = _$_QueryTablesOrderChanged;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryTablesOrderChangedCopyWith<_QueryTablesOrderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueryTablesStateTearOff {
  const _$QueryTablesStateTearOff();

  _QueryTablesState call(
      {required bool isChanging, required List<QueryElement> tables}) {
    return _QueryTablesState(
      isChanging: isChanging,
      tables: tables,
    );
  }
}

/// @nodoc
const $QueryTablesState = _$QueryTablesStateTearOff();

/// @nodoc
mixin _$QueryTablesState {
  bool get isChanging => throw _privateConstructorUsedError;
  List<QueryElement> get tables => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryTablesStateCopyWith<QueryTablesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryTablesStateCopyWith<$Res> {
  factory $QueryTablesStateCopyWith(
          QueryTablesState value, $Res Function(QueryTablesState) then) =
      _$QueryTablesStateCopyWithImpl<$Res>;
  $Res call({bool isChanging, List<QueryElement> tables});
}

/// @nodoc
class _$QueryTablesStateCopyWithImpl<$Res>
    implements $QueryTablesStateCopyWith<$Res> {
  _$QueryTablesStateCopyWithImpl(this._value, this._then);

  final QueryTablesState _value;
  // ignore: unused_field
  final $Res Function(QueryTablesState) _then;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? tables = freezed,
  }) {
    return _then(_value.copyWith(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      tables: tables == freezed
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc
abstract class _$QueryTablesStateCopyWith<$Res>
    implements $QueryTablesStateCopyWith<$Res> {
  factory _$QueryTablesStateCopyWith(
          _QueryTablesState value, $Res Function(_QueryTablesState) then) =
      __$QueryTablesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isChanging, List<QueryElement> tables});
}

/// @nodoc
class __$QueryTablesStateCopyWithImpl<$Res>
    extends _$QueryTablesStateCopyWithImpl<$Res>
    implements _$QueryTablesStateCopyWith<$Res> {
  __$QueryTablesStateCopyWithImpl(
      _QueryTablesState _value, $Res Function(_QueryTablesState) _then)
      : super(_value, (v) => _then(v as _QueryTablesState));

  @override
  _QueryTablesState get _value => super._value as _QueryTablesState;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? tables = freezed,
  }) {
    return _then(_QueryTablesState(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      tables: tables == freezed
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc

class _$_QueryTablesState
    with DiagnosticableTreeMixin
    implements _QueryTablesState {
  const _$_QueryTablesState({required this.isChanging, required this.tables});

  @override
  final bool isChanging;
  @override
  final List<QueryElement> tables;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryTablesState(isChanging: $isChanging, tables: $tables)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryTablesState'))
      ..add(DiagnosticsProperty('isChanging', isChanging))
      ..add(DiagnosticsProperty('tables', tables));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryTablesState &&
            (identical(other.isChanging, isChanging) ||
                const DeepCollectionEquality()
                    .equals(other.isChanging, isChanging)) &&
            (identical(other.tables, tables) ||
                const DeepCollectionEquality().equals(other.tables, tables)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isChanging) ^
      const DeepCollectionEquality().hash(tables);

  @JsonKey(ignore: true)
  @override
  _$QueryTablesStateCopyWith<_QueryTablesState> get copyWith =>
      __$QueryTablesStateCopyWithImpl<_QueryTablesState>(this, _$identity);
}

abstract class _QueryTablesState implements QueryTablesState {
  const factory _QueryTablesState(
      {required bool isChanging,
      required List<QueryElement> tables}) = _$_QueryTablesState;

  @override
  bool get isChanging => throw _privateConstructorUsedError;
  @override
  List<QueryElement> get tables => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryTablesStateCopyWith<_QueryTablesState> get copyWith =>
      throw _privateConstructorUsedError;
}
