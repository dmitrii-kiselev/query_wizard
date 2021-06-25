// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_batches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryBatchesEventTearOff {
  const _$QueryBatchesEventTearOff();

  _Initialized initialized({required List<QueryBatch> batches}) {
    return _Initialized(
      batches: batches,
    );
  }

  _BatchAdded batchAdded({required QueryBatch batch}) {
    return _BatchAdded(
      batch: batch,
    );
  }

  _BatchCopied batchCopied({required QueryBatch batch}) {
    return _BatchCopied(
      batch: batch,
    );
  }

  _BatchDeleted batchDeleted({required int index}) {
    return _BatchDeleted(
      index: index,
    );
  }

  _BatchOrderChanged batchOrderChanged(
      {required int oldIndex, required int newIndex}) {
    return _BatchOrderChanged(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $QueryBatchesEvent = _$QueryBatchesEventTearOff();

/// @nodoc
mixin _$QueryBatchesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryBatch> batches) initialized,
    required TResult Function(QueryBatch batch) batchAdded,
    required TResult Function(QueryBatch batch) batchCopied,
    required TResult Function(int index) batchDeleted,
    required TResult Function(int oldIndex, int newIndex) batchOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryBatch> batches)? initialized,
    TResult Function(QueryBatch batch)? batchAdded,
    TResult Function(QueryBatch batch)? batchCopied,
    TResult Function(int index)? batchDeleted,
    TResult Function(int oldIndex, int newIndex)? batchOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BatchAdded value) batchAdded,
    required TResult Function(_BatchCopied value) batchCopied,
    required TResult Function(_BatchDeleted value) batchDeleted,
    required TResult Function(_BatchOrderChanged value) batchOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BatchAdded value)? batchAdded,
    TResult Function(_BatchCopied value)? batchCopied,
    TResult Function(_BatchDeleted value)? batchDeleted,
    TResult Function(_BatchOrderChanged value)? batchOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryBatchesEventCopyWith<$Res> {
  factory $QueryBatchesEventCopyWith(
          QueryBatchesEvent value, $Res Function(QueryBatchesEvent) then) =
      _$QueryBatchesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryBatchesEventCopyWithImpl<$Res>
    implements $QueryBatchesEventCopyWith<$Res> {
  _$QueryBatchesEventCopyWithImpl(this._value, this._then);

  final QueryBatchesEvent _value;
  // ignore: unused_field
  final $Res Function(QueryBatchesEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<QueryBatch> batches});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QueryBatchesEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? batches = freezed,
  }) {
    return _then(_Initialized(
      batches: batches == freezed
          ? _value.batches
          : batches // ignore: cast_nullable_to_non_nullable
              as List<QueryBatch>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.batches});

  @override
  final List<QueryBatch> batches;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryBatchesEvent.initialized(batches: $batches)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryBatchesEvent.initialized'))
      ..add(DiagnosticsProperty('batches', batches));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.batches, batches) ||
                const DeepCollectionEquality().equals(other.batches, batches)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(batches);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryBatch> batches) initialized,
    required TResult Function(QueryBatch batch) batchAdded,
    required TResult Function(QueryBatch batch) batchCopied,
    required TResult Function(int index) batchDeleted,
    required TResult Function(int oldIndex, int newIndex) batchOrderChanged,
  }) {
    return initialized(batches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryBatch> batches)? initialized,
    TResult Function(QueryBatch batch)? batchAdded,
    TResult Function(QueryBatch batch)? batchCopied,
    TResult Function(int index)? batchDeleted,
    TResult Function(int oldIndex, int newIndex)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(batches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BatchAdded value) batchAdded,
    required TResult Function(_BatchCopied value) batchCopied,
    required TResult Function(_BatchDeleted value) batchDeleted,
    required TResult Function(_BatchOrderChanged value) batchOrderChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BatchAdded value)? batchAdded,
    TResult Function(_BatchCopied value)? batchCopied,
    TResult Function(_BatchDeleted value)? batchDeleted,
    TResult Function(_BatchOrderChanged value)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueryBatchesEvent {
  const factory _Initialized({required List<QueryBatch> batches}) =
      _$_Initialized;

  List<QueryBatch> get batches => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BatchAddedCopyWith<$Res> {
  factory _$BatchAddedCopyWith(
          _BatchAdded value, $Res Function(_BatchAdded) then) =
      __$BatchAddedCopyWithImpl<$Res>;
  $Res call({QueryBatch batch});

  $QueryBatchCopyWith<$Res> get batch;
}

/// @nodoc
class __$BatchAddedCopyWithImpl<$Res>
    extends _$QueryBatchesEventCopyWithImpl<$Res>
    implements _$BatchAddedCopyWith<$Res> {
  __$BatchAddedCopyWithImpl(
      _BatchAdded _value, $Res Function(_BatchAdded) _then)
      : super(_value, (v) => _then(v as _BatchAdded));

  @override
  _BatchAdded get _value => super._value as _BatchAdded;

  @override
  $Res call({
    Object? batch = freezed,
  }) {
    return _then(_BatchAdded(
      batch: batch == freezed
          ? _value.batch
          : batch // ignore: cast_nullable_to_non_nullable
              as QueryBatch,
    ));
  }

  @override
  $QueryBatchCopyWith<$Res> get batch {
    return $QueryBatchCopyWith<$Res>(_value.batch, (value) {
      return _then(_value.copyWith(batch: value));
    });
  }
}

/// @nodoc

class _$_BatchAdded with DiagnosticableTreeMixin implements _BatchAdded {
  const _$_BatchAdded({required this.batch});

  @override
  final QueryBatch batch;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryBatchesEvent.batchAdded(batch: $batch)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryBatchesEvent.batchAdded'))
      ..add(DiagnosticsProperty('batch', batch));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BatchAdded &&
            (identical(other.batch, batch) ||
                const DeepCollectionEquality().equals(other.batch, batch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(batch);

  @JsonKey(ignore: true)
  @override
  _$BatchAddedCopyWith<_BatchAdded> get copyWith =>
      __$BatchAddedCopyWithImpl<_BatchAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryBatch> batches) initialized,
    required TResult Function(QueryBatch batch) batchAdded,
    required TResult Function(QueryBatch batch) batchCopied,
    required TResult Function(int index) batchDeleted,
    required TResult Function(int oldIndex, int newIndex) batchOrderChanged,
  }) {
    return batchAdded(batch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryBatch> batches)? initialized,
    TResult Function(QueryBatch batch)? batchAdded,
    TResult Function(QueryBatch batch)? batchCopied,
    TResult Function(int index)? batchDeleted,
    TResult Function(int oldIndex, int newIndex)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (batchAdded != null) {
      return batchAdded(batch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BatchAdded value) batchAdded,
    required TResult Function(_BatchCopied value) batchCopied,
    required TResult Function(_BatchDeleted value) batchDeleted,
    required TResult Function(_BatchOrderChanged value) batchOrderChanged,
  }) {
    return batchAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BatchAdded value)? batchAdded,
    TResult Function(_BatchCopied value)? batchCopied,
    TResult Function(_BatchDeleted value)? batchDeleted,
    TResult Function(_BatchOrderChanged value)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (batchAdded != null) {
      return batchAdded(this);
    }
    return orElse();
  }
}

abstract class _BatchAdded implements QueryBatchesEvent {
  const factory _BatchAdded({required QueryBatch batch}) = _$_BatchAdded;

  QueryBatch get batch => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BatchAddedCopyWith<_BatchAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BatchCopiedCopyWith<$Res> {
  factory _$BatchCopiedCopyWith(
          _BatchCopied value, $Res Function(_BatchCopied) then) =
      __$BatchCopiedCopyWithImpl<$Res>;
  $Res call({QueryBatch batch});

  $QueryBatchCopyWith<$Res> get batch;
}

/// @nodoc
class __$BatchCopiedCopyWithImpl<$Res>
    extends _$QueryBatchesEventCopyWithImpl<$Res>
    implements _$BatchCopiedCopyWith<$Res> {
  __$BatchCopiedCopyWithImpl(
      _BatchCopied _value, $Res Function(_BatchCopied) _then)
      : super(_value, (v) => _then(v as _BatchCopied));

  @override
  _BatchCopied get _value => super._value as _BatchCopied;

  @override
  $Res call({
    Object? batch = freezed,
  }) {
    return _then(_BatchCopied(
      batch: batch == freezed
          ? _value.batch
          : batch // ignore: cast_nullable_to_non_nullable
              as QueryBatch,
    ));
  }

  @override
  $QueryBatchCopyWith<$Res> get batch {
    return $QueryBatchCopyWith<$Res>(_value.batch, (value) {
      return _then(_value.copyWith(batch: value));
    });
  }
}

/// @nodoc

class _$_BatchCopied with DiagnosticableTreeMixin implements _BatchCopied {
  const _$_BatchCopied({required this.batch});

  @override
  final QueryBatch batch;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryBatchesEvent.batchCopied(batch: $batch)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryBatchesEvent.batchCopied'))
      ..add(DiagnosticsProperty('batch', batch));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BatchCopied &&
            (identical(other.batch, batch) ||
                const DeepCollectionEquality().equals(other.batch, batch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(batch);

  @JsonKey(ignore: true)
  @override
  _$BatchCopiedCopyWith<_BatchCopied> get copyWith =>
      __$BatchCopiedCopyWithImpl<_BatchCopied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryBatch> batches) initialized,
    required TResult Function(QueryBatch batch) batchAdded,
    required TResult Function(QueryBatch batch) batchCopied,
    required TResult Function(int index) batchDeleted,
    required TResult Function(int oldIndex, int newIndex) batchOrderChanged,
  }) {
    return batchCopied(batch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryBatch> batches)? initialized,
    TResult Function(QueryBatch batch)? batchAdded,
    TResult Function(QueryBatch batch)? batchCopied,
    TResult Function(int index)? batchDeleted,
    TResult Function(int oldIndex, int newIndex)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (batchCopied != null) {
      return batchCopied(batch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BatchAdded value) batchAdded,
    required TResult Function(_BatchCopied value) batchCopied,
    required TResult Function(_BatchDeleted value) batchDeleted,
    required TResult Function(_BatchOrderChanged value) batchOrderChanged,
  }) {
    return batchCopied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BatchAdded value)? batchAdded,
    TResult Function(_BatchCopied value)? batchCopied,
    TResult Function(_BatchDeleted value)? batchDeleted,
    TResult Function(_BatchOrderChanged value)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (batchCopied != null) {
      return batchCopied(this);
    }
    return orElse();
  }
}

abstract class _BatchCopied implements QueryBatchesEvent {
  const factory _BatchCopied({required QueryBatch batch}) = _$_BatchCopied;

  QueryBatch get batch => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BatchCopiedCopyWith<_BatchCopied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BatchDeletedCopyWith<$Res> {
  factory _$BatchDeletedCopyWith(
          _BatchDeleted value, $Res Function(_BatchDeleted) then) =
      __$BatchDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$BatchDeletedCopyWithImpl<$Res>
    extends _$QueryBatchesEventCopyWithImpl<$Res>
    implements _$BatchDeletedCopyWith<$Res> {
  __$BatchDeletedCopyWithImpl(
      _BatchDeleted _value, $Res Function(_BatchDeleted) _then)
      : super(_value, (v) => _then(v as _BatchDeleted));

  @override
  _BatchDeleted get _value => super._value as _BatchDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_BatchDeleted(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BatchDeleted with DiagnosticableTreeMixin implements _BatchDeleted {
  const _$_BatchDeleted({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryBatchesEvent.batchDeleted(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryBatchesEvent.batchDeleted'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BatchDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$BatchDeletedCopyWith<_BatchDeleted> get copyWith =>
      __$BatchDeletedCopyWithImpl<_BatchDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryBatch> batches) initialized,
    required TResult Function(QueryBatch batch) batchAdded,
    required TResult Function(QueryBatch batch) batchCopied,
    required TResult Function(int index) batchDeleted,
    required TResult Function(int oldIndex, int newIndex) batchOrderChanged,
  }) {
    return batchDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryBatch> batches)? initialized,
    TResult Function(QueryBatch batch)? batchAdded,
    TResult Function(QueryBatch batch)? batchCopied,
    TResult Function(int index)? batchDeleted,
    TResult Function(int oldIndex, int newIndex)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (batchDeleted != null) {
      return batchDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BatchAdded value) batchAdded,
    required TResult Function(_BatchCopied value) batchCopied,
    required TResult Function(_BatchDeleted value) batchDeleted,
    required TResult Function(_BatchOrderChanged value) batchOrderChanged,
  }) {
    return batchDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BatchAdded value)? batchAdded,
    TResult Function(_BatchCopied value)? batchCopied,
    TResult Function(_BatchDeleted value)? batchDeleted,
    TResult Function(_BatchOrderChanged value)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (batchDeleted != null) {
      return batchDeleted(this);
    }
    return orElse();
  }
}

abstract class _BatchDeleted implements QueryBatchesEvent {
  const factory _BatchDeleted({required int index}) = _$_BatchDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BatchDeletedCopyWith<_BatchDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BatchOrderChangedCopyWith<$Res> {
  factory _$BatchOrderChangedCopyWith(
          _BatchOrderChanged value, $Res Function(_BatchOrderChanged) then) =
      __$BatchOrderChangedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$BatchOrderChangedCopyWithImpl<$Res>
    extends _$QueryBatchesEventCopyWithImpl<$Res>
    implements _$BatchOrderChangedCopyWith<$Res> {
  __$BatchOrderChangedCopyWithImpl(
      _BatchOrderChanged _value, $Res Function(_BatchOrderChanged) _then)
      : super(_value, (v) => _then(v as _BatchOrderChanged));

  @override
  _BatchOrderChanged get _value => super._value as _BatchOrderChanged;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_BatchOrderChanged(
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

class _$_BatchOrderChanged
    with DiagnosticableTreeMixin
    implements _BatchOrderChanged {
  const _$_BatchOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryBatchesEvent.batchOrderChanged(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryBatchesEvent.batchOrderChanged'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BatchOrderChanged &&
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
  _$BatchOrderChangedCopyWith<_BatchOrderChanged> get copyWith =>
      __$BatchOrderChangedCopyWithImpl<_BatchOrderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryBatch> batches) initialized,
    required TResult Function(QueryBatch batch) batchAdded,
    required TResult Function(QueryBatch batch) batchCopied,
    required TResult Function(int index) batchDeleted,
    required TResult Function(int oldIndex, int newIndex) batchOrderChanged,
  }) {
    return batchOrderChanged(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryBatch> batches)? initialized,
    TResult Function(QueryBatch batch)? batchAdded,
    TResult Function(QueryBatch batch)? batchCopied,
    TResult Function(int index)? batchDeleted,
    TResult Function(int oldIndex, int newIndex)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (batchOrderChanged != null) {
      return batchOrderChanged(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BatchAdded value) batchAdded,
    required TResult Function(_BatchCopied value) batchCopied,
    required TResult Function(_BatchDeleted value) batchDeleted,
    required TResult Function(_BatchOrderChanged value) batchOrderChanged,
  }) {
    return batchOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BatchAdded value)? batchAdded,
    TResult Function(_BatchCopied value)? batchCopied,
    TResult Function(_BatchDeleted value)? batchDeleted,
    TResult Function(_BatchOrderChanged value)? batchOrderChanged,
    required TResult orElse(),
  }) {
    if (batchOrderChanged != null) {
      return batchOrderChanged(this);
    }
    return orElse();
  }
}

abstract class _BatchOrderChanged implements QueryBatchesEvent {
  const factory _BatchOrderChanged(
      {required int oldIndex, required int newIndex}) = _$_BatchOrderChanged;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BatchOrderChangedCopyWith<_BatchOrderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueryBatchesStateTearOff {
  const _$QueryBatchesStateTearOff();

  _QueryBatchesState call(
      {required bool isChanging, required List<QueryBatch> batches}) {
    return _QueryBatchesState(
      isChanging: isChanging,
      batches: batches,
    );
  }
}

/// @nodoc
const $QueryBatchesState = _$QueryBatchesStateTearOff();

/// @nodoc
mixin _$QueryBatchesState {
  bool get isChanging => throw _privateConstructorUsedError;
  List<QueryBatch> get batches => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryBatchesStateCopyWith<QueryBatchesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryBatchesStateCopyWith<$Res> {
  factory $QueryBatchesStateCopyWith(
          QueryBatchesState value, $Res Function(QueryBatchesState) then) =
      _$QueryBatchesStateCopyWithImpl<$Res>;
  $Res call({bool isChanging, List<QueryBatch> batches});
}

/// @nodoc
class _$QueryBatchesStateCopyWithImpl<$Res>
    implements $QueryBatchesStateCopyWith<$Res> {
  _$QueryBatchesStateCopyWithImpl(this._value, this._then);

  final QueryBatchesState _value;
  // ignore: unused_field
  final $Res Function(QueryBatchesState) _then;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? batches = freezed,
  }) {
    return _then(_value.copyWith(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      batches: batches == freezed
          ? _value.batches
          : batches // ignore: cast_nullable_to_non_nullable
              as List<QueryBatch>,
    ));
  }
}

/// @nodoc
abstract class _$QueryBatchesStateCopyWith<$Res>
    implements $QueryBatchesStateCopyWith<$Res> {
  factory _$QueryBatchesStateCopyWith(
          _QueryBatchesState value, $Res Function(_QueryBatchesState) then) =
      __$QueryBatchesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isChanging, List<QueryBatch> batches});
}

/// @nodoc
class __$QueryBatchesStateCopyWithImpl<$Res>
    extends _$QueryBatchesStateCopyWithImpl<$Res>
    implements _$QueryBatchesStateCopyWith<$Res> {
  __$QueryBatchesStateCopyWithImpl(
      _QueryBatchesState _value, $Res Function(_QueryBatchesState) _then)
      : super(_value, (v) => _then(v as _QueryBatchesState));

  @override
  _QueryBatchesState get _value => super._value as _QueryBatchesState;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? batches = freezed,
  }) {
    return _then(_QueryBatchesState(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      batches: batches == freezed
          ? _value.batches
          : batches // ignore: cast_nullable_to_non_nullable
              as List<QueryBatch>,
    ));
  }
}

/// @nodoc

class _$_QueryBatchesState
    with DiagnosticableTreeMixin
    implements _QueryBatchesState {
  const _$_QueryBatchesState({required this.isChanging, required this.batches});

  @override
  final bool isChanging;
  @override
  final List<QueryBatch> batches;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryBatchesState(isChanging: $isChanging, batches: $batches)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryBatchesState'))
      ..add(DiagnosticsProperty('isChanging', isChanging))
      ..add(DiagnosticsProperty('batches', batches));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryBatchesState &&
            (identical(other.isChanging, isChanging) ||
                const DeepCollectionEquality()
                    .equals(other.isChanging, isChanging)) &&
            (identical(other.batches, batches) ||
                const DeepCollectionEquality().equals(other.batches, batches)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isChanging) ^
      const DeepCollectionEquality().hash(batches);

  @JsonKey(ignore: true)
  @override
  _$QueryBatchesStateCopyWith<_QueryBatchesState> get copyWith =>
      __$QueryBatchesStateCopyWithImpl<_QueryBatchesState>(this, _$identity);
}

abstract class _QueryBatchesState implements QueryBatchesState {
  const factory _QueryBatchesState(
      {required bool isChanging,
      required List<QueryBatch> batches}) = _$_QueryBatchesState;

  @override
  bool get isChanging => throw _privateConstructorUsedError;
  @override
  List<QueryBatch> get batches => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryBatchesStateCopyWith<_QueryBatchesState> get copyWith =>
      throw _privateConstructorUsedError;
}
