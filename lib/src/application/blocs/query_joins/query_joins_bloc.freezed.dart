// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_joins_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryJoinsEventTearOff {
  const _$QueryJoinsEventTearOff();

  _Initialized initialized({required List<QueryJoin> joins}) {
    return _Initialized(
      joins: joins,
    );
  }

  _QueryJoinAdded joinAdded({required QueryJoin join}) {
    return _QueryJoinAdded(
      join: join,
    );
  }

  _QueryJoinUpdated joinUpdated(
      {required int index,
      required QueryJoin join,
      String? leftTable,
      bool? isLeftAll,
      String? rightTable,
      bool? isRightAll,
      QueryCondition? condition}) {
    return _QueryJoinUpdated(
      index: index,
      join: join,
      leftTable: leftTable,
      isLeftAll: isLeftAll,
      rightTable: rightTable,
      isRightAll: isRightAll,
      condition: condition,
    );
  }

  _QueryJoinCopied joinCopied({required QueryJoin join}) {
    return _QueryJoinCopied(
      join: join,
    );
  }

  _QueryJoinDeleted joinDeleted({required int index}) {
    return _QueryJoinDeleted(
      index: index,
    );
  }

  _QueryJoinOrderChanged joinOrderChanged(
      {required int oldIndex, required int newIndex}) {
    return _QueryJoinOrderChanged(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $QueryJoinsEvent = _$QueryJoinsEventTearOff();

/// @nodoc
mixin _$QueryJoinsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryJoin> joins) initialized,
    required TResult Function(QueryJoin join) joinAdded,
    required TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)
        joinUpdated,
    required TResult Function(QueryJoin join) joinCopied,
    required TResult Function(int index) joinDeleted,
    required TResult Function(int oldIndex, int newIndex) joinOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryJoin> joins)? initialized,
    TResult Function(QueryJoin join)? joinAdded,
    TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)?
        joinUpdated,
    TResult Function(QueryJoin join)? joinCopied,
    TResult Function(int index)? joinDeleted,
    TResult Function(int oldIndex, int newIndex)? joinOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryJoinAdded value) joinAdded,
    required TResult Function(_QueryJoinUpdated value) joinUpdated,
    required TResult Function(_QueryJoinCopied value) joinCopied,
    required TResult Function(_QueryJoinDeleted value) joinDeleted,
    required TResult Function(_QueryJoinOrderChanged value) joinOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryJoinAdded value)? joinAdded,
    TResult Function(_QueryJoinUpdated value)? joinUpdated,
    TResult Function(_QueryJoinCopied value)? joinCopied,
    TResult Function(_QueryJoinDeleted value)? joinDeleted,
    TResult Function(_QueryJoinOrderChanged value)? joinOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryJoinsEventCopyWith<$Res> {
  factory $QueryJoinsEventCopyWith(
          QueryJoinsEvent value, $Res Function(QueryJoinsEvent) then) =
      _$QueryJoinsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryJoinsEventCopyWithImpl<$Res>
    implements $QueryJoinsEventCopyWith<$Res> {
  _$QueryJoinsEventCopyWithImpl(this._value, this._then);

  final QueryJoinsEvent _value;
  // ignore: unused_field
  final $Res Function(QueryJoinsEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<QueryJoin> joins});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QueryJoinsEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? joins = freezed,
  }) {
    return _then(_Initialized(
      joins: joins == freezed
          ? _value.joins
          : joins // ignore: cast_nullable_to_non_nullable
              as List<QueryJoin>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.joins});

  @override
  final List<QueryJoin> joins;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryJoinsEvent.initialized(joins: $joins)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryJoinsEvent.initialized'))
      ..add(DiagnosticsProperty('joins', joins));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.joins, joins) ||
                const DeepCollectionEquality().equals(other.joins, joins)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(joins);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryJoin> joins) initialized,
    required TResult Function(QueryJoin join) joinAdded,
    required TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)
        joinUpdated,
    required TResult Function(QueryJoin join) joinCopied,
    required TResult Function(int index) joinDeleted,
    required TResult Function(int oldIndex, int newIndex) joinOrderChanged,
  }) {
    return initialized(joins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryJoin> joins)? initialized,
    TResult Function(QueryJoin join)? joinAdded,
    TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)?
        joinUpdated,
    TResult Function(QueryJoin join)? joinCopied,
    TResult Function(int index)? joinDeleted,
    TResult Function(int oldIndex, int newIndex)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(joins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryJoinAdded value) joinAdded,
    required TResult Function(_QueryJoinUpdated value) joinUpdated,
    required TResult Function(_QueryJoinCopied value) joinCopied,
    required TResult Function(_QueryJoinDeleted value) joinDeleted,
    required TResult Function(_QueryJoinOrderChanged value) joinOrderChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryJoinAdded value)? joinAdded,
    TResult Function(_QueryJoinUpdated value)? joinUpdated,
    TResult Function(_QueryJoinCopied value)? joinCopied,
    TResult Function(_QueryJoinDeleted value)? joinDeleted,
    TResult Function(_QueryJoinOrderChanged value)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueryJoinsEvent {
  const factory _Initialized({required List<QueryJoin> joins}) = _$_Initialized;

  List<QueryJoin> get joins => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryJoinAddedCopyWith<$Res> {
  factory _$QueryJoinAddedCopyWith(
          _QueryJoinAdded value, $Res Function(_QueryJoinAdded) then) =
      __$QueryJoinAddedCopyWithImpl<$Res>;
  $Res call({QueryJoin join});

  $QueryJoinCopyWith<$Res> get join;
}

/// @nodoc
class __$QueryJoinAddedCopyWithImpl<$Res>
    extends _$QueryJoinsEventCopyWithImpl<$Res>
    implements _$QueryJoinAddedCopyWith<$Res> {
  __$QueryJoinAddedCopyWithImpl(
      _QueryJoinAdded _value, $Res Function(_QueryJoinAdded) _then)
      : super(_value, (v) => _then(v as _QueryJoinAdded));

  @override
  _QueryJoinAdded get _value => super._value as _QueryJoinAdded;

  @override
  $Res call({
    Object? join = freezed,
  }) {
    return _then(_QueryJoinAdded(
      join: join == freezed
          ? _value.join
          : join // ignore: cast_nullable_to_non_nullable
              as QueryJoin,
    ));
  }

  @override
  $QueryJoinCopyWith<$Res> get join {
    return $QueryJoinCopyWith<$Res>(_value.join, (value) {
      return _then(_value.copyWith(join: value));
    });
  }
}

/// @nodoc

class _$_QueryJoinAdded
    with DiagnosticableTreeMixin
    implements _QueryJoinAdded {
  const _$_QueryJoinAdded({required this.join});

  @override
  final QueryJoin join;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryJoinsEvent.joinAdded(join: $join)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryJoinsEvent.joinAdded'))
      ..add(DiagnosticsProperty('join', join));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryJoinAdded &&
            (identical(other.join, join) ||
                const DeepCollectionEquality().equals(other.join, join)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(join);

  @JsonKey(ignore: true)
  @override
  _$QueryJoinAddedCopyWith<_QueryJoinAdded> get copyWith =>
      __$QueryJoinAddedCopyWithImpl<_QueryJoinAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryJoin> joins) initialized,
    required TResult Function(QueryJoin join) joinAdded,
    required TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)
        joinUpdated,
    required TResult Function(QueryJoin join) joinCopied,
    required TResult Function(int index) joinDeleted,
    required TResult Function(int oldIndex, int newIndex) joinOrderChanged,
  }) {
    return joinAdded(join);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryJoin> joins)? initialized,
    TResult Function(QueryJoin join)? joinAdded,
    TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)?
        joinUpdated,
    TResult Function(QueryJoin join)? joinCopied,
    TResult Function(int index)? joinDeleted,
    TResult Function(int oldIndex, int newIndex)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinAdded != null) {
      return joinAdded(join);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryJoinAdded value) joinAdded,
    required TResult Function(_QueryJoinUpdated value) joinUpdated,
    required TResult Function(_QueryJoinCopied value) joinCopied,
    required TResult Function(_QueryJoinDeleted value) joinDeleted,
    required TResult Function(_QueryJoinOrderChanged value) joinOrderChanged,
  }) {
    return joinAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryJoinAdded value)? joinAdded,
    TResult Function(_QueryJoinUpdated value)? joinUpdated,
    TResult Function(_QueryJoinCopied value)? joinCopied,
    TResult Function(_QueryJoinDeleted value)? joinDeleted,
    TResult Function(_QueryJoinOrderChanged value)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinAdded != null) {
      return joinAdded(this);
    }
    return orElse();
  }
}

abstract class _QueryJoinAdded implements QueryJoinsEvent {
  const factory _QueryJoinAdded({required QueryJoin join}) = _$_QueryJoinAdded;

  QueryJoin get join => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryJoinAddedCopyWith<_QueryJoinAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryJoinUpdatedCopyWith<$Res> {
  factory _$QueryJoinUpdatedCopyWith(
          _QueryJoinUpdated value, $Res Function(_QueryJoinUpdated) then) =
      __$QueryJoinUpdatedCopyWithImpl<$Res>;
  $Res call(
      {int index,
      QueryJoin join,
      String? leftTable,
      bool? isLeftAll,
      String? rightTable,
      bool? isRightAll,
      QueryCondition? condition});

  $QueryJoinCopyWith<$Res> get join;
  $QueryConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class __$QueryJoinUpdatedCopyWithImpl<$Res>
    extends _$QueryJoinsEventCopyWithImpl<$Res>
    implements _$QueryJoinUpdatedCopyWith<$Res> {
  __$QueryJoinUpdatedCopyWithImpl(
      _QueryJoinUpdated _value, $Res Function(_QueryJoinUpdated) _then)
      : super(_value, (v) => _then(v as _QueryJoinUpdated));

  @override
  _QueryJoinUpdated get _value => super._value as _QueryJoinUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? join = freezed,
    Object? leftTable = freezed,
    Object? isLeftAll = freezed,
    Object? rightTable = freezed,
    Object? isRightAll = freezed,
    Object? condition = freezed,
  }) {
    return _then(_QueryJoinUpdated(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      join: join == freezed
          ? _value.join
          : join // ignore: cast_nullable_to_non_nullable
              as QueryJoin,
      leftTable: leftTable == freezed
          ? _value.leftTable
          : leftTable // ignore: cast_nullable_to_non_nullable
              as String?,
      isLeftAll: isLeftAll == freezed
          ? _value.isLeftAll
          : isLeftAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      rightTable: rightTable == freezed
          ? _value.rightTable
          : rightTable // ignore: cast_nullable_to_non_nullable
              as String?,
      isRightAll: isRightAll == freezed
          ? _value.isRightAll
          : isRightAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as QueryCondition?,
    ));
  }

  @override
  $QueryJoinCopyWith<$Res> get join {
    return $QueryJoinCopyWith<$Res>(_value.join, (value) {
      return _then(_value.copyWith(join: value));
    });
  }

  @override
  $QueryConditionCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $QueryConditionCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value));
    });
  }
}

/// @nodoc

class _$_QueryJoinUpdated
    with DiagnosticableTreeMixin
    implements _QueryJoinUpdated {
  const _$_QueryJoinUpdated(
      {required this.index,
      required this.join,
      this.leftTable,
      this.isLeftAll,
      this.rightTable,
      this.isRightAll,
      this.condition});

  @override
  final int index;
  @override
  final QueryJoin join;
  @override
  final String? leftTable;
  @override
  final bool? isLeftAll;
  @override
  final String? rightTable;
  @override
  final bool? isRightAll;
  @override
  final QueryCondition? condition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryJoinsEvent.joinUpdated(index: $index, join: $join, leftTable: $leftTable, isLeftAll: $isLeftAll, rightTable: $rightTable, isRightAll: $isRightAll, condition: $condition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryJoinsEvent.joinUpdated'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('join', join))
      ..add(DiagnosticsProperty('leftTable', leftTable))
      ..add(DiagnosticsProperty('isLeftAll', isLeftAll))
      ..add(DiagnosticsProperty('rightTable', rightTable))
      ..add(DiagnosticsProperty('isRightAll', isRightAll))
      ..add(DiagnosticsProperty('condition', condition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryJoinUpdated &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.join, join) ||
                const DeepCollectionEquality().equals(other.join, join)) &&
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
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(join) ^
      const DeepCollectionEquality().hash(leftTable) ^
      const DeepCollectionEquality().hash(isLeftAll) ^
      const DeepCollectionEquality().hash(rightTable) ^
      const DeepCollectionEquality().hash(isRightAll) ^
      const DeepCollectionEquality().hash(condition);

  @JsonKey(ignore: true)
  @override
  _$QueryJoinUpdatedCopyWith<_QueryJoinUpdated> get copyWith =>
      __$QueryJoinUpdatedCopyWithImpl<_QueryJoinUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryJoin> joins) initialized,
    required TResult Function(QueryJoin join) joinAdded,
    required TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)
        joinUpdated,
    required TResult Function(QueryJoin join) joinCopied,
    required TResult Function(int index) joinDeleted,
    required TResult Function(int oldIndex, int newIndex) joinOrderChanged,
  }) {
    return joinUpdated(
        index, join, leftTable, isLeftAll, rightTable, isRightAll, condition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryJoin> joins)? initialized,
    TResult Function(QueryJoin join)? joinAdded,
    TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)?
        joinUpdated,
    TResult Function(QueryJoin join)? joinCopied,
    TResult Function(int index)? joinDeleted,
    TResult Function(int oldIndex, int newIndex)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinUpdated != null) {
      return joinUpdated(
          index, join, leftTable, isLeftAll, rightTable, isRightAll, condition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryJoinAdded value) joinAdded,
    required TResult Function(_QueryJoinUpdated value) joinUpdated,
    required TResult Function(_QueryJoinCopied value) joinCopied,
    required TResult Function(_QueryJoinDeleted value) joinDeleted,
    required TResult Function(_QueryJoinOrderChanged value) joinOrderChanged,
  }) {
    return joinUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryJoinAdded value)? joinAdded,
    TResult Function(_QueryJoinUpdated value)? joinUpdated,
    TResult Function(_QueryJoinCopied value)? joinCopied,
    TResult Function(_QueryJoinDeleted value)? joinDeleted,
    TResult Function(_QueryJoinOrderChanged value)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinUpdated != null) {
      return joinUpdated(this);
    }
    return orElse();
  }
}

abstract class _QueryJoinUpdated implements QueryJoinsEvent {
  const factory _QueryJoinUpdated(
      {required int index,
      required QueryJoin join,
      String? leftTable,
      bool? isLeftAll,
      String? rightTable,
      bool? isRightAll,
      QueryCondition? condition}) = _$_QueryJoinUpdated;

  int get index => throw _privateConstructorUsedError;
  QueryJoin get join => throw _privateConstructorUsedError;
  String? get leftTable => throw _privateConstructorUsedError;
  bool? get isLeftAll => throw _privateConstructorUsedError;
  String? get rightTable => throw _privateConstructorUsedError;
  bool? get isRightAll => throw _privateConstructorUsedError;
  QueryCondition? get condition => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryJoinUpdatedCopyWith<_QueryJoinUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryJoinCopiedCopyWith<$Res> {
  factory _$QueryJoinCopiedCopyWith(
          _QueryJoinCopied value, $Res Function(_QueryJoinCopied) then) =
      __$QueryJoinCopiedCopyWithImpl<$Res>;
  $Res call({QueryJoin join});

  $QueryJoinCopyWith<$Res> get join;
}

/// @nodoc
class __$QueryJoinCopiedCopyWithImpl<$Res>
    extends _$QueryJoinsEventCopyWithImpl<$Res>
    implements _$QueryJoinCopiedCopyWith<$Res> {
  __$QueryJoinCopiedCopyWithImpl(
      _QueryJoinCopied _value, $Res Function(_QueryJoinCopied) _then)
      : super(_value, (v) => _then(v as _QueryJoinCopied));

  @override
  _QueryJoinCopied get _value => super._value as _QueryJoinCopied;

  @override
  $Res call({
    Object? join = freezed,
  }) {
    return _then(_QueryJoinCopied(
      join: join == freezed
          ? _value.join
          : join // ignore: cast_nullable_to_non_nullable
              as QueryJoin,
    ));
  }

  @override
  $QueryJoinCopyWith<$Res> get join {
    return $QueryJoinCopyWith<$Res>(_value.join, (value) {
      return _then(_value.copyWith(join: value));
    });
  }
}

/// @nodoc

class _$_QueryJoinCopied
    with DiagnosticableTreeMixin
    implements _QueryJoinCopied {
  const _$_QueryJoinCopied({required this.join});

  @override
  final QueryJoin join;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryJoinsEvent.joinCopied(join: $join)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryJoinsEvent.joinCopied'))
      ..add(DiagnosticsProperty('join', join));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryJoinCopied &&
            (identical(other.join, join) ||
                const DeepCollectionEquality().equals(other.join, join)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(join);

  @JsonKey(ignore: true)
  @override
  _$QueryJoinCopiedCopyWith<_QueryJoinCopied> get copyWith =>
      __$QueryJoinCopiedCopyWithImpl<_QueryJoinCopied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryJoin> joins) initialized,
    required TResult Function(QueryJoin join) joinAdded,
    required TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)
        joinUpdated,
    required TResult Function(QueryJoin join) joinCopied,
    required TResult Function(int index) joinDeleted,
    required TResult Function(int oldIndex, int newIndex) joinOrderChanged,
  }) {
    return joinCopied(join);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryJoin> joins)? initialized,
    TResult Function(QueryJoin join)? joinAdded,
    TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)?
        joinUpdated,
    TResult Function(QueryJoin join)? joinCopied,
    TResult Function(int index)? joinDeleted,
    TResult Function(int oldIndex, int newIndex)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinCopied != null) {
      return joinCopied(join);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryJoinAdded value) joinAdded,
    required TResult Function(_QueryJoinUpdated value) joinUpdated,
    required TResult Function(_QueryJoinCopied value) joinCopied,
    required TResult Function(_QueryJoinDeleted value) joinDeleted,
    required TResult Function(_QueryJoinOrderChanged value) joinOrderChanged,
  }) {
    return joinCopied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryJoinAdded value)? joinAdded,
    TResult Function(_QueryJoinUpdated value)? joinUpdated,
    TResult Function(_QueryJoinCopied value)? joinCopied,
    TResult Function(_QueryJoinDeleted value)? joinDeleted,
    TResult Function(_QueryJoinOrderChanged value)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinCopied != null) {
      return joinCopied(this);
    }
    return orElse();
  }
}

abstract class _QueryJoinCopied implements QueryJoinsEvent {
  const factory _QueryJoinCopied({required QueryJoin join}) =
      _$_QueryJoinCopied;

  QueryJoin get join => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryJoinCopiedCopyWith<_QueryJoinCopied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryJoinDeletedCopyWith<$Res> {
  factory _$QueryJoinDeletedCopyWith(
          _QueryJoinDeleted value, $Res Function(_QueryJoinDeleted) then) =
      __$QueryJoinDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$QueryJoinDeletedCopyWithImpl<$Res>
    extends _$QueryJoinsEventCopyWithImpl<$Res>
    implements _$QueryJoinDeletedCopyWith<$Res> {
  __$QueryJoinDeletedCopyWithImpl(
      _QueryJoinDeleted _value, $Res Function(_QueryJoinDeleted) _then)
      : super(_value, (v) => _then(v as _QueryJoinDeleted));

  @override
  _QueryJoinDeleted get _value => super._value as _QueryJoinDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_QueryJoinDeleted(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QueryJoinDeleted
    with DiagnosticableTreeMixin
    implements _QueryJoinDeleted {
  const _$_QueryJoinDeleted({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryJoinsEvent.joinDeleted(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryJoinsEvent.joinDeleted'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryJoinDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$QueryJoinDeletedCopyWith<_QueryJoinDeleted> get copyWith =>
      __$QueryJoinDeletedCopyWithImpl<_QueryJoinDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryJoin> joins) initialized,
    required TResult Function(QueryJoin join) joinAdded,
    required TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)
        joinUpdated,
    required TResult Function(QueryJoin join) joinCopied,
    required TResult Function(int index) joinDeleted,
    required TResult Function(int oldIndex, int newIndex) joinOrderChanged,
  }) {
    return joinDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryJoin> joins)? initialized,
    TResult Function(QueryJoin join)? joinAdded,
    TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)?
        joinUpdated,
    TResult Function(QueryJoin join)? joinCopied,
    TResult Function(int index)? joinDeleted,
    TResult Function(int oldIndex, int newIndex)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinDeleted != null) {
      return joinDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryJoinAdded value) joinAdded,
    required TResult Function(_QueryJoinUpdated value) joinUpdated,
    required TResult Function(_QueryJoinCopied value) joinCopied,
    required TResult Function(_QueryJoinDeleted value) joinDeleted,
    required TResult Function(_QueryJoinOrderChanged value) joinOrderChanged,
  }) {
    return joinDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryJoinAdded value)? joinAdded,
    TResult Function(_QueryJoinUpdated value)? joinUpdated,
    TResult Function(_QueryJoinCopied value)? joinCopied,
    TResult Function(_QueryJoinDeleted value)? joinDeleted,
    TResult Function(_QueryJoinOrderChanged value)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinDeleted != null) {
      return joinDeleted(this);
    }
    return orElse();
  }
}

abstract class _QueryJoinDeleted implements QueryJoinsEvent {
  const factory _QueryJoinDeleted({required int index}) = _$_QueryJoinDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryJoinDeletedCopyWith<_QueryJoinDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryJoinOrderChangedCopyWith<$Res> {
  factory _$QueryJoinOrderChangedCopyWith(_QueryJoinOrderChanged value,
          $Res Function(_QueryJoinOrderChanged) then) =
      __$QueryJoinOrderChangedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$QueryJoinOrderChangedCopyWithImpl<$Res>
    extends _$QueryJoinsEventCopyWithImpl<$Res>
    implements _$QueryJoinOrderChangedCopyWith<$Res> {
  __$QueryJoinOrderChangedCopyWithImpl(_QueryJoinOrderChanged _value,
      $Res Function(_QueryJoinOrderChanged) _then)
      : super(_value, (v) => _then(v as _QueryJoinOrderChanged));

  @override
  _QueryJoinOrderChanged get _value => super._value as _QueryJoinOrderChanged;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_QueryJoinOrderChanged(
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

class _$_QueryJoinOrderChanged
    with DiagnosticableTreeMixin
    implements _QueryJoinOrderChanged {
  const _$_QueryJoinOrderChanged(
      {required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryJoinsEvent.joinOrderChanged(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryJoinsEvent.joinOrderChanged'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryJoinOrderChanged &&
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
  _$QueryJoinOrderChangedCopyWith<_QueryJoinOrderChanged> get copyWith =>
      __$QueryJoinOrderChangedCopyWithImpl<_QueryJoinOrderChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryJoin> joins) initialized,
    required TResult Function(QueryJoin join) joinAdded,
    required TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)
        joinUpdated,
    required TResult Function(QueryJoin join) joinCopied,
    required TResult Function(int index) joinDeleted,
    required TResult Function(int oldIndex, int newIndex) joinOrderChanged,
  }) {
    return joinOrderChanged(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryJoin> joins)? initialized,
    TResult Function(QueryJoin join)? joinAdded,
    TResult Function(
            int index,
            QueryJoin join,
            String? leftTable,
            bool? isLeftAll,
            String? rightTable,
            bool? isRightAll,
            QueryCondition? condition)?
        joinUpdated,
    TResult Function(QueryJoin join)? joinCopied,
    TResult Function(int index)? joinDeleted,
    TResult Function(int oldIndex, int newIndex)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinOrderChanged != null) {
      return joinOrderChanged(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryJoinAdded value) joinAdded,
    required TResult Function(_QueryJoinUpdated value) joinUpdated,
    required TResult Function(_QueryJoinCopied value) joinCopied,
    required TResult Function(_QueryJoinDeleted value) joinDeleted,
    required TResult Function(_QueryJoinOrderChanged value) joinOrderChanged,
  }) {
    return joinOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryJoinAdded value)? joinAdded,
    TResult Function(_QueryJoinUpdated value)? joinUpdated,
    TResult Function(_QueryJoinCopied value)? joinCopied,
    TResult Function(_QueryJoinDeleted value)? joinDeleted,
    TResult Function(_QueryJoinOrderChanged value)? joinOrderChanged,
    required TResult orElse(),
  }) {
    if (joinOrderChanged != null) {
      return joinOrderChanged(this);
    }
    return orElse();
  }
}

abstract class _QueryJoinOrderChanged implements QueryJoinsEvent {
  const factory _QueryJoinOrderChanged(
      {required int oldIndex,
      required int newIndex}) = _$_QueryJoinOrderChanged;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryJoinOrderChangedCopyWith<_QueryJoinOrderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueryJoinsStateTearOff {
  const _$QueryJoinsStateTearOff();

  _QueryJoinsState call({required List<QueryJoin> joins}) {
    return _QueryJoinsState(
      joins: joins,
    );
  }
}

/// @nodoc
const $QueryJoinsState = _$QueryJoinsStateTearOff();

/// @nodoc
mixin _$QueryJoinsState {
  List<QueryJoin> get joins => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryJoinsStateCopyWith<QueryJoinsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryJoinsStateCopyWith<$Res> {
  factory $QueryJoinsStateCopyWith(
          QueryJoinsState value, $Res Function(QueryJoinsState) then) =
      _$QueryJoinsStateCopyWithImpl<$Res>;
  $Res call({List<QueryJoin> joins});
}

/// @nodoc
class _$QueryJoinsStateCopyWithImpl<$Res>
    implements $QueryJoinsStateCopyWith<$Res> {
  _$QueryJoinsStateCopyWithImpl(this._value, this._then);

  final QueryJoinsState _value;
  // ignore: unused_field
  final $Res Function(QueryJoinsState) _then;

  @override
  $Res call({
    Object? joins = freezed,
  }) {
    return _then(_value.copyWith(
      joins: joins == freezed
          ? _value.joins
          : joins // ignore: cast_nullable_to_non_nullable
              as List<QueryJoin>,
    ));
  }
}

/// @nodoc
abstract class _$QueryJoinsStateCopyWith<$Res>
    implements $QueryJoinsStateCopyWith<$Res> {
  factory _$QueryJoinsStateCopyWith(
          _QueryJoinsState value, $Res Function(_QueryJoinsState) then) =
      __$QueryJoinsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<QueryJoin> joins});
}

/// @nodoc
class __$QueryJoinsStateCopyWithImpl<$Res>
    extends _$QueryJoinsStateCopyWithImpl<$Res>
    implements _$QueryJoinsStateCopyWith<$Res> {
  __$QueryJoinsStateCopyWithImpl(
      _QueryJoinsState _value, $Res Function(_QueryJoinsState) _then)
      : super(_value, (v) => _then(v as _QueryJoinsState));

  @override
  _QueryJoinsState get _value => super._value as _QueryJoinsState;

  @override
  $Res call({
    Object? joins = freezed,
  }) {
    return _then(_QueryJoinsState(
      joins: joins == freezed
          ? _value.joins
          : joins // ignore: cast_nullable_to_non_nullable
              as List<QueryJoin>,
    ));
  }
}

/// @nodoc

class _$_QueryJoinsState
    with DiagnosticableTreeMixin
    implements _QueryJoinsState {
  const _$_QueryJoinsState({required this.joins});

  @override
  final List<QueryJoin> joins;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryJoinsState(joins: $joins)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryJoinsState'))
      ..add(DiagnosticsProperty('joins', joins));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryJoinsState &&
            (identical(other.joins, joins) ||
                const DeepCollectionEquality().equals(other.joins, joins)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(joins);

  @JsonKey(ignore: true)
  @override
  _$QueryJoinsStateCopyWith<_QueryJoinsState> get copyWith =>
      __$QueryJoinsStateCopyWithImpl<_QueryJoinsState>(this, _$identity);
}

abstract class _QueryJoinsState implements QueryJoinsState {
  const factory _QueryJoinsState({required List<QueryJoin> joins}) =
      _$_QueryJoinsState;

  @override
  List<QueryJoin> get joins => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryJoinsStateCopyWith<_QueryJoinsState> get copyWith =>
      throw _privateConstructorUsedError;
}
