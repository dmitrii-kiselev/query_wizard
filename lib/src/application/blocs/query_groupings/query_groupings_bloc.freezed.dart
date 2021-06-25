// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_groupings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryGroupingsEventTearOff {
  const _$QueryGroupingsEventTearOff();

  _Initialized initialized({required List<QueryGrouping> groupings}) {
    return _Initialized(
      groupings: groupings,
    );
  }

  _GroupingAdded groupingAdded({required QueryGrouping grouping}) {
    return _GroupingAdded(
      grouping: grouping,
    );
  }

  _GroupingDeleted groupingDeleted({required int index}) {
    return _GroupingDeleted(
      index: index,
    );
  }

  _GroupingOrderChanged groupingOrderChanged(
      {required int oldIndex, required int newIndex}) {
    return _GroupingOrderChanged(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $QueryGroupingsEvent = _$QueryGroupingsEventTearOff();

/// @nodoc
mixin _$QueryGroupingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryGrouping> groupings) initialized,
    required TResult Function(QueryGrouping grouping) groupingAdded,
    required TResult Function(int index) groupingDeleted,
    required TResult Function(int oldIndex, int newIndex) groupingOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryGrouping> groupings)? initialized,
    TResult Function(QueryGrouping grouping)? groupingAdded,
    TResult Function(int index)? groupingDeleted,
    TResult Function(int oldIndex, int newIndex)? groupingOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupingAdded value) groupingAdded,
    required TResult Function(_GroupingDeleted value) groupingDeleted,
    required TResult Function(_GroupingOrderChanged value) groupingOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupingAdded value)? groupingAdded,
    TResult Function(_GroupingDeleted value)? groupingDeleted,
    TResult Function(_GroupingOrderChanged value)? groupingOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryGroupingsEventCopyWith<$Res> {
  factory $QueryGroupingsEventCopyWith(
          QueryGroupingsEvent value, $Res Function(QueryGroupingsEvent) then) =
      _$QueryGroupingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryGroupingsEventCopyWithImpl<$Res>
    implements $QueryGroupingsEventCopyWith<$Res> {
  _$QueryGroupingsEventCopyWithImpl(this._value, this._then);

  final QueryGroupingsEvent _value;
  // ignore: unused_field
  final $Res Function(QueryGroupingsEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<QueryGrouping> groupings});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QueryGroupingsEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? groupings = freezed,
  }) {
    return _then(_Initialized(
      groupings: groupings == freezed
          ? _value.groupings
          : groupings // ignore: cast_nullable_to_non_nullable
              as List<QueryGrouping>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.groupings});

  @override
  final List<QueryGrouping> groupings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryGroupingsEvent.initialized(groupings: $groupings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryGroupingsEvent.initialized'))
      ..add(DiagnosticsProperty('groupings', groupings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.groupings, groupings) ||
                const DeepCollectionEquality()
                    .equals(other.groupings, groupings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(groupings);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryGrouping> groupings) initialized,
    required TResult Function(QueryGrouping grouping) groupingAdded,
    required TResult Function(int index) groupingDeleted,
    required TResult Function(int oldIndex, int newIndex) groupingOrderChanged,
  }) {
    return initialized(groupings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryGrouping> groupings)? initialized,
    TResult Function(QueryGrouping grouping)? groupingAdded,
    TResult Function(int index)? groupingDeleted,
    TResult Function(int oldIndex, int newIndex)? groupingOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(groupings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupingAdded value) groupingAdded,
    required TResult Function(_GroupingDeleted value) groupingDeleted,
    required TResult Function(_GroupingOrderChanged value) groupingOrderChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupingAdded value)? groupingAdded,
    TResult Function(_GroupingDeleted value)? groupingDeleted,
    TResult Function(_GroupingOrderChanged value)? groupingOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueryGroupingsEvent {
  const factory _Initialized({required List<QueryGrouping> groupings}) =
      _$_Initialized;

  List<QueryGrouping> get groupings => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GroupingAddedCopyWith<$Res> {
  factory _$GroupingAddedCopyWith(
          _GroupingAdded value, $Res Function(_GroupingAdded) then) =
      __$GroupingAddedCopyWithImpl<$Res>;
  $Res call({QueryGrouping grouping});

  $QueryGroupingCopyWith<$Res> get grouping;
}

/// @nodoc
class __$GroupingAddedCopyWithImpl<$Res>
    extends _$QueryGroupingsEventCopyWithImpl<$Res>
    implements _$GroupingAddedCopyWith<$Res> {
  __$GroupingAddedCopyWithImpl(
      _GroupingAdded _value, $Res Function(_GroupingAdded) _then)
      : super(_value, (v) => _then(v as _GroupingAdded));

  @override
  _GroupingAdded get _value => super._value as _GroupingAdded;

  @override
  $Res call({
    Object? grouping = freezed,
  }) {
    return _then(_GroupingAdded(
      grouping: grouping == freezed
          ? _value.grouping
          : grouping // ignore: cast_nullable_to_non_nullable
              as QueryGrouping,
    ));
  }

  @override
  $QueryGroupingCopyWith<$Res> get grouping {
    return $QueryGroupingCopyWith<$Res>(_value.grouping, (value) {
      return _then(_value.copyWith(grouping: value));
    });
  }
}

/// @nodoc

class _$_GroupingAdded with DiagnosticableTreeMixin implements _GroupingAdded {
  const _$_GroupingAdded({required this.grouping});

  @override
  final QueryGrouping grouping;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryGroupingsEvent.groupingAdded(grouping: $grouping)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryGroupingsEvent.groupingAdded'))
      ..add(DiagnosticsProperty('grouping', grouping));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupingAdded &&
            (identical(other.grouping, grouping) ||
                const DeepCollectionEquality()
                    .equals(other.grouping, grouping)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(grouping);

  @JsonKey(ignore: true)
  @override
  _$GroupingAddedCopyWith<_GroupingAdded> get copyWith =>
      __$GroupingAddedCopyWithImpl<_GroupingAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryGrouping> groupings) initialized,
    required TResult Function(QueryGrouping grouping) groupingAdded,
    required TResult Function(int index) groupingDeleted,
    required TResult Function(int oldIndex, int newIndex) groupingOrderChanged,
  }) {
    return groupingAdded(grouping);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryGrouping> groupings)? initialized,
    TResult Function(QueryGrouping grouping)? groupingAdded,
    TResult Function(int index)? groupingDeleted,
    TResult Function(int oldIndex, int newIndex)? groupingOrderChanged,
    required TResult orElse(),
  }) {
    if (groupingAdded != null) {
      return groupingAdded(grouping);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupingAdded value) groupingAdded,
    required TResult Function(_GroupingDeleted value) groupingDeleted,
    required TResult Function(_GroupingOrderChanged value) groupingOrderChanged,
  }) {
    return groupingAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupingAdded value)? groupingAdded,
    TResult Function(_GroupingDeleted value)? groupingDeleted,
    TResult Function(_GroupingOrderChanged value)? groupingOrderChanged,
    required TResult orElse(),
  }) {
    if (groupingAdded != null) {
      return groupingAdded(this);
    }
    return orElse();
  }
}

abstract class _GroupingAdded implements QueryGroupingsEvent {
  const factory _GroupingAdded({required QueryGrouping grouping}) =
      _$_GroupingAdded;

  QueryGrouping get grouping => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GroupingAddedCopyWith<_GroupingAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GroupingDeletedCopyWith<$Res> {
  factory _$GroupingDeletedCopyWith(
          _GroupingDeleted value, $Res Function(_GroupingDeleted) then) =
      __$GroupingDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$GroupingDeletedCopyWithImpl<$Res>
    extends _$QueryGroupingsEventCopyWithImpl<$Res>
    implements _$GroupingDeletedCopyWith<$Res> {
  __$GroupingDeletedCopyWithImpl(
      _GroupingDeleted _value, $Res Function(_GroupingDeleted) _then)
      : super(_value, (v) => _then(v as _GroupingDeleted));

  @override
  _GroupingDeleted get _value => super._value as _GroupingDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_GroupingDeleted(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GroupingDeleted
    with DiagnosticableTreeMixin
    implements _GroupingDeleted {
  const _$_GroupingDeleted({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryGroupingsEvent.groupingDeleted(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryGroupingsEvent.groupingDeleted'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupingDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$GroupingDeletedCopyWith<_GroupingDeleted> get copyWith =>
      __$GroupingDeletedCopyWithImpl<_GroupingDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryGrouping> groupings) initialized,
    required TResult Function(QueryGrouping grouping) groupingAdded,
    required TResult Function(int index) groupingDeleted,
    required TResult Function(int oldIndex, int newIndex) groupingOrderChanged,
  }) {
    return groupingDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryGrouping> groupings)? initialized,
    TResult Function(QueryGrouping grouping)? groupingAdded,
    TResult Function(int index)? groupingDeleted,
    TResult Function(int oldIndex, int newIndex)? groupingOrderChanged,
    required TResult orElse(),
  }) {
    if (groupingDeleted != null) {
      return groupingDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupingAdded value) groupingAdded,
    required TResult Function(_GroupingDeleted value) groupingDeleted,
    required TResult Function(_GroupingOrderChanged value) groupingOrderChanged,
  }) {
    return groupingDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupingAdded value)? groupingAdded,
    TResult Function(_GroupingDeleted value)? groupingDeleted,
    TResult Function(_GroupingOrderChanged value)? groupingOrderChanged,
    required TResult orElse(),
  }) {
    if (groupingDeleted != null) {
      return groupingDeleted(this);
    }
    return orElse();
  }
}

abstract class _GroupingDeleted implements QueryGroupingsEvent {
  const factory _GroupingDeleted({required int index}) = _$_GroupingDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GroupingDeletedCopyWith<_GroupingDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GroupingOrderChangedCopyWith<$Res> {
  factory _$GroupingOrderChangedCopyWith(_GroupingOrderChanged value,
          $Res Function(_GroupingOrderChanged) then) =
      __$GroupingOrderChangedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$GroupingOrderChangedCopyWithImpl<$Res>
    extends _$QueryGroupingsEventCopyWithImpl<$Res>
    implements _$GroupingOrderChangedCopyWith<$Res> {
  __$GroupingOrderChangedCopyWithImpl(
      _GroupingOrderChanged _value, $Res Function(_GroupingOrderChanged) _then)
      : super(_value, (v) => _then(v as _GroupingOrderChanged));

  @override
  _GroupingOrderChanged get _value => super._value as _GroupingOrderChanged;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_GroupingOrderChanged(
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

class _$_GroupingOrderChanged
    with DiagnosticableTreeMixin
    implements _GroupingOrderChanged {
  const _$_GroupingOrderChanged(
      {required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryGroupingsEvent.groupingOrderChanged(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'QueryGroupingsEvent.groupingOrderChanged'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupingOrderChanged &&
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
  _$GroupingOrderChangedCopyWith<_GroupingOrderChanged> get copyWith =>
      __$GroupingOrderChangedCopyWithImpl<_GroupingOrderChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryGrouping> groupings) initialized,
    required TResult Function(QueryGrouping grouping) groupingAdded,
    required TResult Function(int index) groupingDeleted,
    required TResult Function(int oldIndex, int newIndex) groupingOrderChanged,
  }) {
    return groupingOrderChanged(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryGrouping> groupings)? initialized,
    TResult Function(QueryGrouping grouping)? groupingAdded,
    TResult Function(int index)? groupingDeleted,
    TResult Function(int oldIndex, int newIndex)? groupingOrderChanged,
    required TResult orElse(),
  }) {
    if (groupingOrderChanged != null) {
      return groupingOrderChanged(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupingAdded value) groupingAdded,
    required TResult Function(_GroupingDeleted value) groupingDeleted,
    required TResult Function(_GroupingOrderChanged value) groupingOrderChanged,
  }) {
    return groupingOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupingAdded value)? groupingAdded,
    TResult Function(_GroupingDeleted value)? groupingDeleted,
    TResult Function(_GroupingOrderChanged value)? groupingOrderChanged,
    required TResult orElse(),
  }) {
    if (groupingOrderChanged != null) {
      return groupingOrderChanged(this);
    }
    return orElse();
  }
}

abstract class _GroupingOrderChanged implements QueryGroupingsEvent {
  const factory _GroupingOrderChanged(
      {required int oldIndex, required int newIndex}) = _$_GroupingOrderChanged;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GroupingOrderChangedCopyWith<_GroupingOrderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueryGroupingsStateTearOff {
  const _$QueryGroupingsStateTearOff();

  _QueryGroupingsState call(
      {required bool isChanging, required List<QueryGrouping> groupings}) {
    return _QueryGroupingsState(
      isChanging: isChanging,
      groupings: groupings,
    );
  }
}

/// @nodoc
const $QueryGroupingsState = _$QueryGroupingsStateTearOff();

/// @nodoc
mixin _$QueryGroupingsState {
  bool get isChanging => throw _privateConstructorUsedError;
  List<QueryGrouping> get groupings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryGroupingsStateCopyWith<QueryGroupingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryGroupingsStateCopyWith<$Res> {
  factory $QueryGroupingsStateCopyWith(
          QueryGroupingsState value, $Res Function(QueryGroupingsState) then) =
      _$QueryGroupingsStateCopyWithImpl<$Res>;
  $Res call({bool isChanging, List<QueryGrouping> groupings});
}

/// @nodoc
class _$QueryGroupingsStateCopyWithImpl<$Res>
    implements $QueryGroupingsStateCopyWith<$Res> {
  _$QueryGroupingsStateCopyWithImpl(this._value, this._then);

  final QueryGroupingsState _value;
  // ignore: unused_field
  final $Res Function(QueryGroupingsState) _then;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? groupings = freezed,
  }) {
    return _then(_value.copyWith(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      groupings: groupings == freezed
          ? _value.groupings
          : groupings // ignore: cast_nullable_to_non_nullable
              as List<QueryGrouping>,
    ));
  }
}

/// @nodoc
abstract class _$QueryGroupingsStateCopyWith<$Res>
    implements $QueryGroupingsStateCopyWith<$Res> {
  factory _$QueryGroupingsStateCopyWith(_QueryGroupingsState value,
          $Res Function(_QueryGroupingsState) then) =
      __$QueryGroupingsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isChanging, List<QueryGrouping> groupings});
}

/// @nodoc
class __$QueryGroupingsStateCopyWithImpl<$Res>
    extends _$QueryGroupingsStateCopyWithImpl<$Res>
    implements _$QueryGroupingsStateCopyWith<$Res> {
  __$QueryGroupingsStateCopyWithImpl(
      _QueryGroupingsState _value, $Res Function(_QueryGroupingsState) _then)
      : super(_value, (v) => _then(v as _QueryGroupingsState));

  @override
  _QueryGroupingsState get _value => super._value as _QueryGroupingsState;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? groupings = freezed,
  }) {
    return _then(_QueryGroupingsState(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      groupings: groupings == freezed
          ? _value.groupings
          : groupings // ignore: cast_nullable_to_non_nullable
              as List<QueryGrouping>,
    ));
  }
}

/// @nodoc

class _$_QueryGroupingsState
    with DiagnosticableTreeMixin
    implements _QueryGroupingsState {
  const _$_QueryGroupingsState(
      {required this.isChanging, required this.groupings});

  @override
  final bool isChanging;
  @override
  final List<QueryGrouping> groupings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryGroupingsState(isChanging: $isChanging, groupings: $groupings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryGroupingsState'))
      ..add(DiagnosticsProperty('isChanging', isChanging))
      ..add(DiagnosticsProperty('groupings', groupings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryGroupingsState &&
            (identical(other.isChanging, isChanging) ||
                const DeepCollectionEquality()
                    .equals(other.isChanging, isChanging)) &&
            (identical(other.groupings, groupings) ||
                const DeepCollectionEquality()
                    .equals(other.groupings, groupings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isChanging) ^
      const DeepCollectionEquality().hash(groupings);

  @JsonKey(ignore: true)
  @override
  _$QueryGroupingsStateCopyWith<_QueryGroupingsState> get copyWith =>
      __$QueryGroupingsStateCopyWithImpl<_QueryGroupingsState>(
          this, _$identity);
}

abstract class _QueryGroupingsState implements QueryGroupingsState {
  const factory _QueryGroupingsState(
      {required bool isChanging,
      required List<QueryGrouping> groupings}) = _$_QueryGroupingsState;

  @override
  bool get isChanging => throw _privateConstructorUsedError;
  @override
  List<QueryGrouping> get groupings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryGroupingsStateCopyWith<_QueryGroupingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
