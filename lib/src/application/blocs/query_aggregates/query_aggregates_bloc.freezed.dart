// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_aggregates_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryAggregatesEventTearOff {
  const _$QueryAggregatesEventTearOff();

  _Initialized initialized({required List<QueryAggregate> aggregates}) {
    return _Initialized(
      aggregates: aggregates,
    );
  }

  _AggregateAdded aggregateAdded({required QueryAggregate aggregate}) {
    return _AggregateAdded(
      aggregate: aggregate,
    );
  }

  _AggregateCopied aggregateUpdated(
      {required int index, required QueryAggregate aggregate}) {
    return _AggregateCopied(
      index: index,
      aggregate: aggregate,
    );
  }

  _AggregateDeleted aggregateDeleted({required int index}) {
    return _AggregateDeleted(
      index: index,
    );
  }

  _AggregateOrderChanged aggregateOrderChanged(
      {required int oldIndex, required int newIndex}) {
    return _AggregateOrderChanged(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $QueryAggregatesEvent = _$QueryAggregatesEventTearOff();

/// @nodoc
mixin _$QueryAggregatesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryAggregate> aggregates) initialized,
    required TResult Function(QueryAggregate aggregate) aggregateAdded,
    required TResult Function(int index, QueryAggregate aggregate)
        aggregateUpdated,
    required TResult Function(int index) aggregateDeleted,
    required TResult Function(int oldIndex, int newIndex) aggregateOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryAggregate> aggregates)? initialized,
    TResult Function(QueryAggregate aggregate)? aggregateAdded,
    TResult Function(int index, QueryAggregate aggregate)? aggregateUpdated,
    TResult Function(int index)? aggregateDeleted,
    TResult Function(int oldIndex, int newIndex)? aggregateOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AggregateAdded value) aggregateAdded,
    required TResult Function(_AggregateCopied value) aggregateUpdated,
    required TResult Function(_AggregateDeleted value) aggregateDeleted,
    required TResult Function(_AggregateOrderChanged value)
        aggregateOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AggregateAdded value)? aggregateAdded,
    TResult Function(_AggregateCopied value)? aggregateUpdated,
    TResult Function(_AggregateDeleted value)? aggregateDeleted,
    TResult Function(_AggregateOrderChanged value)? aggregateOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryAggregatesEventCopyWith<$Res> {
  factory $QueryAggregatesEventCopyWith(QueryAggregatesEvent value,
          $Res Function(QueryAggregatesEvent) then) =
      _$QueryAggregatesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryAggregatesEventCopyWithImpl<$Res>
    implements $QueryAggregatesEventCopyWith<$Res> {
  _$QueryAggregatesEventCopyWithImpl(this._value, this._then);

  final QueryAggregatesEvent _value;
  // ignore: unused_field
  final $Res Function(QueryAggregatesEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<QueryAggregate> aggregates});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QueryAggregatesEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? aggregates = freezed,
  }) {
    return _then(_Initialized(
      aggregates: aggregates == freezed
          ? _value.aggregates
          : aggregates // ignore: cast_nullable_to_non_nullable
              as List<QueryAggregate>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.aggregates});

  @override
  final List<QueryAggregate> aggregates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryAggregatesEvent.initialized(aggregates: $aggregates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryAggregatesEvent.initialized'))
      ..add(DiagnosticsProperty('aggregates', aggregates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.aggregates, aggregates) ||
                const DeepCollectionEquality()
                    .equals(other.aggregates, aggregates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(aggregates);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryAggregate> aggregates) initialized,
    required TResult Function(QueryAggregate aggregate) aggregateAdded,
    required TResult Function(int index, QueryAggregate aggregate)
        aggregateUpdated,
    required TResult Function(int index) aggregateDeleted,
    required TResult Function(int oldIndex, int newIndex) aggregateOrderChanged,
  }) {
    return initialized(aggregates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryAggregate> aggregates)? initialized,
    TResult Function(QueryAggregate aggregate)? aggregateAdded,
    TResult Function(int index, QueryAggregate aggregate)? aggregateUpdated,
    TResult Function(int index)? aggregateDeleted,
    TResult Function(int oldIndex, int newIndex)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(aggregates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AggregateAdded value) aggregateAdded,
    required TResult Function(_AggregateCopied value) aggregateUpdated,
    required TResult Function(_AggregateDeleted value) aggregateDeleted,
    required TResult Function(_AggregateOrderChanged value)
        aggregateOrderChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AggregateAdded value)? aggregateAdded,
    TResult Function(_AggregateCopied value)? aggregateUpdated,
    TResult Function(_AggregateDeleted value)? aggregateDeleted,
    TResult Function(_AggregateOrderChanged value)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueryAggregatesEvent {
  const factory _Initialized({required List<QueryAggregate> aggregates}) =
      _$_Initialized;

  List<QueryAggregate> get aggregates => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AggregateAddedCopyWith<$Res> {
  factory _$AggregateAddedCopyWith(
          _AggregateAdded value, $Res Function(_AggregateAdded) then) =
      __$AggregateAddedCopyWithImpl<$Res>;
  $Res call({QueryAggregate aggregate});

  $QueryAggregateCopyWith<$Res> get aggregate;
}

/// @nodoc
class __$AggregateAddedCopyWithImpl<$Res>
    extends _$QueryAggregatesEventCopyWithImpl<$Res>
    implements _$AggregateAddedCopyWith<$Res> {
  __$AggregateAddedCopyWithImpl(
      _AggregateAdded _value, $Res Function(_AggregateAdded) _then)
      : super(_value, (v) => _then(v as _AggregateAdded));

  @override
  _AggregateAdded get _value => super._value as _AggregateAdded;

  @override
  $Res call({
    Object? aggregate = freezed,
  }) {
    return _then(_AggregateAdded(
      aggregate: aggregate == freezed
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as QueryAggregate,
    ));
  }

  @override
  $QueryAggregateCopyWith<$Res> get aggregate {
    return $QueryAggregateCopyWith<$Res>(_value.aggregate, (value) {
      return _then(_value.copyWith(aggregate: value));
    });
  }
}

/// @nodoc

class _$_AggregateAdded
    with DiagnosticableTreeMixin
    implements _AggregateAdded {
  const _$_AggregateAdded({required this.aggregate});

  @override
  final QueryAggregate aggregate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryAggregatesEvent.aggregateAdded(aggregate: $aggregate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryAggregatesEvent.aggregateAdded'))
      ..add(DiagnosticsProperty('aggregate', aggregate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AggregateAdded &&
            (identical(other.aggregate, aggregate) ||
                const DeepCollectionEquality()
                    .equals(other.aggregate, aggregate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(aggregate);

  @JsonKey(ignore: true)
  @override
  _$AggregateAddedCopyWith<_AggregateAdded> get copyWith =>
      __$AggregateAddedCopyWithImpl<_AggregateAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryAggregate> aggregates) initialized,
    required TResult Function(QueryAggregate aggregate) aggregateAdded,
    required TResult Function(int index, QueryAggregate aggregate)
        aggregateUpdated,
    required TResult Function(int index) aggregateDeleted,
    required TResult Function(int oldIndex, int newIndex) aggregateOrderChanged,
  }) {
    return aggregateAdded(aggregate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryAggregate> aggregates)? initialized,
    TResult Function(QueryAggregate aggregate)? aggregateAdded,
    TResult Function(int index, QueryAggregate aggregate)? aggregateUpdated,
    TResult Function(int index)? aggregateDeleted,
    TResult Function(int oldIndex, int newIndex)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (aggregateAdded != null) {
      return aggregateAdded(aggregate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AggregateAdded value) aggregateAdded,
    required TResult Function(_AggregateCopied value) aggregateUpdated,
    required TResult Function(_AggregateDeleted value) aggregateDeleted,
    required TResult Function(_AggregateOrderChanged value)
        aggregateOrderChanged,
  }) {
    return aggregateAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AggregateAdded value)? aggregateAdded,
    TResult Function(_AggregateCopied value)? aggregateUpdated,
    TResult Function(_AggregateDeleted value)? aggregateDeleted,
    TResult Function(_AggregateOrderChanged value)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (aggregateAdded != null) {
      return aggregateAdded(this);
    }
    return orElse();
  }
}

abstract class _AggregateAdded implements QueryAggregatesEvent {
  const factory _AggregateAdded({required QueryAggregate aggregate}) =
      _$_AggregateAdded;

  QueryAggregate get aggregate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AggregateAddedCopyWith<_AggregateAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AggregateCopiedCopyWith<$Res> {
  factory _$AggregateCopiedCopyWith(
          _AggregateCopied value, $Res Function(_AggregateCopied) then) =
      __$AggregateCopiedCopyWithImpl<$Res>;
  $Res call({int index, QueryAggregate aggregate});

  $QueryAggregateCopyWith<$Res> get aggregate;
}

/// @nodoc
class __$AggregateCopiedCopyWithImpl<$Res>
    extends _$QueryAggregatesEventCopyWithImpl<$Res>
    implements _$AggregateCopiedCopyWith<$Res> {
  __$AggregateCopiedCopyWithImpl(
      _AggregateCopied _value, $Res Function(_AggregateCopied) _then)
      : super(_value, (v) => _then(v as _AggregateCopied));

  @override
  _AggregateCopied get _value => super._value as _AggregateCopied;

  @override
  $Res call({
    Object? index = freezed,
    Object? aggregate = freezed,
  }) {
    return _then(_AggregateCopied(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      aggregate: aggregate == freezed
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as QueryAggregate,
    ));
  }

  @override
  $QueryAggregateCopyWith<$Res> get aggregate {
    return $QueryAggregateCopyWith<$Res>(_value.aggregate, (value) {
      return _then(_value.copyWith(aggregate: value));
    });
  }
}

/// @nodoc

class _$_AggregateCopied
    with DiagnosticableTreeMixin
    implements _AggregateCopied {
  const _$_AggregateCopied({required this.index, required this.aggregate});

  @override
  final int index;
  @override
  final QueryAggregate aggregate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryAggregatesEvent.aggregateUpdated(index: $index, aggregate: $aggregate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'QueryAggregatesEvent.aggregateUpdated'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('aggregate', aggregate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AggregateCopied &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.aggregate, aggregate) ||
                const DeepCollectionEquality()
                    .equals(other.aggregate, aggregate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(aggregate);

  @JsonKey(ignore: true)
  @override
  _$AggregateCopiedCopyWith<_AggregateCopied> get copyWith =>
      __$AggregateCopiedCopyWithImpl<_AggregateCopied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryAggregate> aggregates) initialized,
    required TResult Function(QueryAggregate aggregate) aggregateAdded,
    required TResult Function(int index, QueryAggregate aggregate)
        aggregateUpdated,
    required TResult Function(int index) aggregateDeleted,
    required TResult Function(int oldIndex, int newIndex) aggregateOrderChanged,
  }) {
    return aggregateUpdated(index, aggregate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryAggregate> aggregates)? initialized,
    TResult Function(QueryAggregate aggregate)? aggregateAdded,
    TResult Function(int index, QueryAggregate aggregate)? aggregateUpdated,
    TResult Function(int index)? aggregateDeleted,
    TResult Function(int oldIndex, int newIndex)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (aggregateUpdated != null) {
      return aggregateUpdated(index, aggregate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AggregateAdded value) aggregateAdded,
    required TResult Function(_AggregateCopied value) aggregateUpdated,
    required TResult Function(_AggregateDeleted value) aggregateDeleted,
    required TResult Function(_AggregateOrderChanged value)
        aggregateOrderChanged,
  }) {
    return aggregateUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AggregateAdded value)? aggregateAdded,
    TResult Function(_AggregateCopied value)? aggregateUpdated,
    TResult Function(_AggregateDeleted value)? aggregateDeleted,
    TResult Function(_AggregateOrderChanged value)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (aggregateUpdated != null) {
      return aggregateUpdated(this);
    }
    return orElse();
  }
}

abstract class _AggregateCopied implements QueryAggregatesEvent {
  const factory _AggregateCopied(
      {required int index,
      required QueryAggregate aggregate}) = _$_AggregateCopied;

  int get index => throw _privateConstructorUsedError;
  QueryAggregate get aggregate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AggregateCopiedCopyWith<_AggregateCopied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AggregateDeletedCopyWith<$Res> {
  factory _$AggregateDeletedCopyWith(
          _AggregateDeleted value, $Res Function(_AggregateDeleted) then) =
      __$AggregateDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$AggregateDeletedCopyWithImpl<$Res>
    extends _$QueryAggregatesEventCopyWithImpl<$Res>
    implements _$AggregateDeletedCopyWith<$Res> {
  __$AggregateDeletedCopyWithImpl(
      _AggregateDeleted _value, $Res Function(_AggregateDeleted) _then)
      : super(_value, (v) => _then(v as _AggregateDeleted));

  @override
  _AggregateDeleted get _value => super._value as _AggregateDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_AggregateDeleted(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AggregateDeleted
    with DiagnosticableTreeMixin
    implements _AggregateDeleted {
  const _$_AggregateDeleted({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryAggregatesEvent.aggregateDeleted(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'QueryAggregatesEvent.aggregateDeleted'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AggregateDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$AggregateDeletedCopyWith<_AggregateDeleted> get copyWith =>
      __$AggregateDeletedCopyWithImpl<_AggregateDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryAggregate> aggregates) initialized,
    required TResult Function(QueryAggregate aggregate) aggregateAdded,
    required TResult Function(int index, QueryAggregate aggregate)
        aggregateUpdated,
    required TResult Function(int index) aggregateDeleted,
    required TResult Function(int oldIndex, int newIndex) aggregateOrderChanged,
  }) {
    return aggregateDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryAggregate> aggregates)? initialized,
    TResult Function(QueryAggregate aggregate)? aggregateAdded,
    TResult Function(int index, QueryAggregate aggregate)? aggregateUpdated,
    TResult Function(int index)? aggregateDeleted,
    TResult Function(int oldIndex, int newIndex)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (aggregateDeleted != null) {
      return aggregateDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AggregateAdded value) aggregateAdded,
    required TResult Function(_AggregateCopied value) aggregateUpdated,
    required TResult Function(_AggregateDeleted value) aggregateDeleted,
    required TResult Function(_AggregateOrderChanged value)
        aggregateOrderChanged,
  }) {
    return aggregateDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AggregateAdded value)? aggregateAdded,
    TResult Function(_AggregateCopied value)? aggregateUpdated,
    TResult Function(_AggregateDeleted value)? aggregateDeleted,
    TResult Function(_AggregateOrderChanged value)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (aggregateDeleted != null) {
      return aggregateDeleted(this);
    }
    return orElse();
  }
}

abstract class _AggregateDeleted implements QueryAggregatesEvent {
  const factory _AggregateDeleted({required int index}) = _$_AggregateDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AggregateDeletedCopyWith<_AggregateDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AggregateOrderChangedCopyWith<$Res> {
  factory _$AggregateOrderChangedCopyWith(_AggregateOrderChanged value,
          $Res Function(_AggregateOrderChanged) then) =
      __$AggregateOrderChangedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$AggregateOrderChangedCopyWithImpl<$Res>
    extends _$QueryAggregatesEventCopyWithImpl<$Res>
    implements _$AggregateOrderChangedCopyWith<$Res> {
  __$AggregateOrderChangedCopyWithImpl(_AggregateOrderChanged _value,
      $Res Function(_AggregateOrderChanged) _then)
      : super(_value, (v) => _then(v as _AggregateOrderChanged));

  @override
  _AggregateOrderChanged get _value => super._value as _AggregateOrderChanged;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_AggregateOrderChanged(
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

class _$_AggregateOrderChanged
    with DiagnosticableTreeMixin
    implements _AggregateOrderChanged {
  const _$_AggregateOrderChanged(
      {required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryAggregatesEvent.aggregateOrderChanged(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'QueryAggregatesEvent.aggregateOrderChanged'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AggregateOrderChanged &&
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
  _$AggregateOrderChangedCopyWith<_AggregateOrderChanged> get copyWith =>
      __$AggregateOrderChangedCopyWithImpl<_AggregateOrderChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryAggregate> aggregates) initialized,
    required TResult Function(QueryAggregate aggregate) aggregateAdded,
    required TResult Function(int index, QueryAggregate aggregate)
        aggregateUpdated,
    required TResult Function(int index) aggregateDeleted,
    required TResult Function(int oldIndex, int newIndex) aggregateOrderChanged,
  }) {
    return aggregateOrderChanged(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryAggregate> aggregates)? initialized,
    TResult Function(QueryAggregate aggregate)? aggregateAdded,
    TResult Function(int index, QueryAggregate aggregate)? aggregateUpdated,
    TResult Function(int index)? aggregateDeleted,
    TResult Function(int oldIndex, int newIndex)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (aggregateOrderChanged != null) {
      return aggregateOrderChanged(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AggregateAdded value) aggregateAdded,
    required TResult Function(_AggregateCopied value) aggregateUpdated,
    required TResult Function(_AggregateDeleted value) aggregateDeleted,
    required TResult Function(_AggregateOrderChanged value)
        aggregateOrderChanged,
  }) {
    return aggregateOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AggregateAdded value)? aggregateAdded,
    TResult Function(_AggregateCopied value)? aggregateUpdated,
    TResult Function(_AggregateDeleted value)? aggregateDeleted,
    TResult Function(_AggregateOrderChanged value)? aggregateOrderChanged,
    required TResult orElse(),
  }) {
    if (aggregateOrderChanged != null) {
      return aggregateOrderChanged(this);
    }
    return orElse();
  }
}

abstract class _AggregateOrderChanged implements QueryAggregatesEvent {
  const factory _AggregateOrderChanged(
      {required int oldIndex,
      required int newIndex}) = _$_AggregateOrderChanged;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AggregateOrderChangedCopyWith<_AggregateOrderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueryAggregatesStateTearOff {
  const _$QueryAggregatesStateTearOff();

  _QueryAggregatesState call(
      {required bool isChanging, required List<QueryAggregate> aggregates}) {
    return _QueryAggregatesState(
      isChanging: isChanging,
      aggregates: aggregates,
    );
  }
}

/// @nodoc
const $QueryAggregatesState = _$QueryAggregatesStateTearOff();

/// @nodoc
mixin _$QueryAggregatesState {
  bool get isChanging => throw _privateConstructorUsedError;
  List<QueryAggregate> get aggregates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryAggregatesStateCopyWith<QueryAggregatesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryAggregatesStateCopyWith<$Res> {
  factory $QueryAggregatesStateCopyWith(QueryAggregatesState value,
          $Res Function(QueryAggregatesState) then) =
      _$QueryAggregatesStateCopyWithImpl<$Res>;
  $Res call({bool isChanging, List<QueryAggregate> aggregates});
}

/// @nodoc
class _$QueryAggregatesStateCopyWithImpl<$Res>
    implements $QueryAggregatesStateCopyWith<$Res> {
  _$QueryAggregatesStateCopyWithImpl(this._value, this._then);

  final QueryAggregatesState _value;
  // ignore: unused_field
  final $Res Function(QueryAggregatesState) _then;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? aggregates = freezed,
  }) {
    return _then(_value.copyWith(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      aggregates: aggregates == freezed
          ? _value.aggregates
          : aggregates // ignore: cast_nullable_to_non_nullable
              as List<QueryAggregate>,
    ));
  }
}

/// @nodoc
abstract class _$QueryAggregatesStateCopyWith<$Res>
    implements $QueryAggregatesStateCopyWith<$Res> {
  factory _$QueryAggregatesStateCopyWith(_QueryAggregatesState value,
          $Res Function(_QueryAggregatesState) then) =
      __$QueryAggregatesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isChanging, List<QueryAggregate> aggregates});
}

/// @nodoc
class __$QueryAggregatesStateCopyWithImpl<$Res>
    extends _$QueryAggregatesStateCopyWithImpl<$Res>
    implements _$QueryAggregatesStateCopyWith<$Res> {
  __$QueryAggregatesStateCopyWithImpl(
      _QueryAggregatesState _value, $Res Function(_QueryAggregatesState) _then)
      : super(_value, (v) => _then(v as _QueryAggregatesState));

  @override
  _QueryAggregatesState get _value => super._value as _QueryAggregatesState;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? aggregates = freezed,
  }) {
    return _then(_QueryAggregatesState(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      aggregates: aggregates == freezed
          ? _value.aggregates
          : aggregates // ignore: cast_nullable_to_non_nullable
              as List<QueryAggregate>,
    ));
  }
}

/// @nodoc

class _$_QueryAggregatesState
    with DiagnosticableTreeMixin
    implements _QueryAggregatesState {
  const _$_QueryAggregatesState(
      {required this.isChanging, required this.aggregates});

  @override
  final bool isChanging;
  @override
  final List<QueryAggregate> aggregates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryAggregatesState(isChanging: $isChanging, aggregates: $aggregates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryAggregatesState'))
      ..add(DiagnosticsProperty('isChanging', isChanging))
      ..add(DiagnosticsProperty('aggregates', aggregates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryAggregatesState &&
            (identical(other.isChanging, isChanging) ||
                const DeepCollectionEquality()
                    .equals(other.isChanging, isChanging)) &&
            (identical(other.aggregates, aggregates) ||
                const DeepCollectionEquality()
                    .equals(other.aggregates, aggregates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isChanging) ^
      const DeepCollectionEquality().hash(aggregates);

  @JsonKey(ignore: true)
  @override
  _$QueryAggregatesStateCopyWith<_QueryAggregatesState> get copyWith =>
      __$QueryAggregatesStateCopyWithImpl<_QueryAggregatesState>(
          this, _$identity);
}

abstract class _QueryAggregatesState implements QueryAggregatesState {
  const factory _QueryAggregatesState(
      {required bool isChanging,
      required List<QueryAggregate> aggregates}) = _$_QueryAggregatesState;

  @override
  bool get isChanging => throw _privateConstructorUsedError;
  @override
  List<QueryAggregate> get aggregates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryAggregatesStateCopyWith<_QueryAggregatesState> get copyWith =>
      throw _privateConstructorUsedError;
}
