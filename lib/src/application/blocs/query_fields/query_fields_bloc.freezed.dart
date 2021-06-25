// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_fields_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryFieldsEventTearOff {
  const _$QueryFieldsEventTearOff();

  _Initialized initialized({required List<QueryElement> fields}) {
    return _Initialized(
      fields: fields,
    );
  }

  _QueryFieldAdded fieldAdded({required QueryElement field}) {
    return _QueryFieldAdded(
      field: field,
    );
  }

  _FieldUpdated fieldUpdated(
      {required int index, required QueryElement field}) {
    return _FieldUpdated(
      index: index,
      field: field,
    );
  }

  _FieldCopied fieldCopied({required QueryElement field}) {
    return _FieldCopied(
      field: field,
    );
  }

  _FieldDeleted fieldDeleted({required int index}) {
    return _FieldDeleted(
      index: index,
    );
  }

  _FieldOrderChanged fieldOrderChanged(
      {required int oldIndex, required int newIndex}) {
    return _FieldOrderChanged(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $QueryFieldsEvent = _$QueryFieldsEventTearOff();

/// @nodoc
mixin _$QueryFieldsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> fields) initialized,
    required TResult Function(QueryElement field) fieldAdded,
    required TResult Function(int index, QueryElement field) fieldUpdated,
    required TResult Function(QueryElement field) fieldCopied,
    required TResult Function(int index) fieldDeleted,
    required TResult Function(int oldIndex, int newIndex) fieldOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> fields)? initialized,
    TResult Function(QueryElement field)? fieldAdded,
    TResult Function(int index, QueryElement field)? fieldUpdated,
    TResult Function(QueryElement field)? fieldCopied,
    TResult Function(int index)? fieldDeleted,
    TResult Function(int oldIndex, int newIndex)? fieldOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryFieldAdded value) fieldAdded,
    required TResult Function(_FieldUpdated value) fieldUpdated,
    required TResult Function(_FieldCopied value) fieldCopied,
    required TResult Function(_FieldDeleted value) fieldDeleted,
    required TResult Function(_FieldOrderChanged value) fieldOrderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryFieldAdded value)? fieldAdded,
    TResult Function(_FieldUpdated value)? fieldUpdated,
    TResult Function(_FieldCopied value)? fieldCopied,
    TResult Function(_FieldDeleted value)? fieldDeleted,
    TResult Function(_FieldOrderChanged value)? fieldOrderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryFieldsEventCopyWith<$Res> {
  factory $QueryFieldsEventCopyWith(
          QueryFieldsEvent value, $Res Function(QueryFieldsEvent) then) =
      _$QueryFieldsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryFieldsEventCopyWithImpl<$Res>
    implements $QueryFieldsEventCopyWith<$Res> {
  _$QueryFieldsEventCopyWithImpl(this._value, this._then);

  final QueryFieldsEvent _value;
  // ignore: unused_field
  final $Res Function(QueryFieldsEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<QueryElement> fields});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QueryFieldsEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_Initialized(
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.fields});

  @override
  final List<QueryElement> fields;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryFieldsEvent.initialized(fields: $fields)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryFieldsEvent.initialized'))
      ..add(DiagnosticsProperty('fields', fields));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fields);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> fields) initialized,
    required TResult Function(QueryElement field) fieldAdded,
    required TResult Function(int index, QueryElement field) fieldUpdated,
    required TResult Function(QueryElement field) fieldCopied,
    required TResult Function(int index) fieldDeleted,
    required TResult Function(int oldIndex, int newIndex) fieldOrderChanged,
  }) {
    return initialized(fields);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> fields)? initialized,
    TResult Function(QueryElement field)? fieldAdded,
    TResult Function(int index, QueryElement field)? fieldUpdated,
    TResult Function(QueryElement field)? fieldCopied,
    TResult Function(int index)? fieldDeleted,
    TResult Function(int oldIndex, int newIndex)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(fields);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryFieldAdded value) fieldAdded,
    required TResult Function(_FieldUpdated value) fieldUpdated,
    required TResult Function(_FieldCopied value) fieldCopied,
    required TResult Function(_FieldDeleted value) fieldDeleted,
    required TResult Function(_FieldOrderChanged value) fieldOrderChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryFieldAdded value)? fieldAdded,
    TResult Function(_FieldUpdated value)? fieldUpdated,
    TResult Function(_FieldCopied value)? fieldCopied,
    TResult Function(_FieldDeleted value)? fieldDeleted,
    TResult Function(_FieldOrderChanged value)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueryFieldsEvent {
  const factory _Initialized({required List<QueryElement> fields}) =
      _$_Initialized;

  List<QueryElement> get fields => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryFieldAddedCopyWith<$Res> {
  factory _$QueryFieldAddedCopyWith(
          _QueryFieldAdded value, $Res Function(_QueryFieldAdded) then) =
      __$QueryFieldAddedCopyWithImpl<$Res>;
  $Res call({QueryElement field});

  $QueryElementCopyWith<$Res> get field;
}

/// @nodoc
class __$QueryFieldAddedCopyWithImpl<$Res>
    extends _$QueryFieldsEventCopyWithImpl<$Res>
    implements _$QueryFieldAddedCopyWith<$Res> {
  __$QueryFieldAddedCopyWithImpl(
      _QueryFieldAdded _value, $Res Function(_QueryFieldAdded) _then)
      : super(_value, (v) => _then(v as _QueryFieldAdded));

  @override
  _QueryFieldAdded get _value => super._value as _QueryFieldAdded;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_QueryFieldAdded(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as QueryElement,
    ));
  }

  @override
  $QueryElementCopyWith<$Res> get field {
    return $QueryElementCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value));
    });
  }
}

/// @nodoc

class _$_QueryFieldAdded
    with DiagnosticableTreeMixin
    implements _QueryFieldAdded {
  const _$_QueryFieldAdded({required this.field});

  @override
  final QueryElement field;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryFieldsEvent.fieldAdded(field: $field)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryFieldsEvent.fieldAdded'))
      ..add(DiagnosticsProperty('field', field));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryFieldAdded &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(field);

  @JsonKey(ignore: true)
  @override
  _$QueryFieldAddedCopyWith<_QueryFieldAdded> get copyWith =>
      __$QueryFieldAddedCopyWithImpl<_QueryFieldAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> fields) initialized,
    required TResult Function(QueryElement field) fieldAdded,
    required TResult Function(int index, QueryElement field) fieldUpdated,
    required TResult Function(QueryElement field) fieldCopied,
    required TResult Function(int index) fieldDeleted,
    required TResult Function(int oldIndex, int newIndex) fieldOrderChanged,
  }) {
    return fieldAdded(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> fields)? initialized,
    TResult Function(QueryElement field)? fieldAdded,
    TResult Function(int index, QueryElement field)? fieldUpdated,
    TResult Function(QueryElement field)? fieldCopied,
    TResult Function(int index)? fieldDeleted,
    TResult Function(int oldIndex, int newIndex)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldAdded != null) {
      return fieldAdded(field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryFieldAdded value) fieldAdded,
    required TResult Function(_FieldUpdated value) fieldUpdated,
    required TResult Function(_FieldCopied value) fieldCopied,
    required TResult Function(_FieldDeleted value) fieldDeleted,
    required TResult Function(_FieldOrderChanged value) fieldOrderChanged,
  }) {
    return fieldAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryFieldAdded value)? fieldAdded,
    TResult Function(_FieldUpdated value)? fieldUpdated,
    TResult Function(_FieldCopied value)? fieldCopied,
    TResult Function(_FieldDeleted value)? fieldDeleted,
    TResult Function(_FieldOrderChanged value)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldAdded != null) {
      return fieldAdded(this);
    }
    return orElse();
  }
}

abstract class _QueryFieldAdded implements QueryFieldsEvent {
  const factory _QueryFieldAdded({required QueryElement field}) =
      _$_QueryFieldAdded;

  QueryElement get field => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QueryFieldAddedCopyWith<_QueryFieldAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FieldUpdatedCopyWith<$Res> {
  factory _$FieldUpdatedCopyWith(
          _FieldUpdated value, $Res Function(_FieldUpdated) then) =
      __$FieldUpdatedCopyWithImpl<$Res>;
  $Res call({int index, QueryElement field});

  $QueryElementCopyWith<$Res> get field;
}

/// @nodoc
class __$FieldUpdatedCopyWithImpl<$Res>
    extends _$QueryFieldsEventCopyWithImpl<$Res>
    implements _$FieldUpdatedCopyWith<$Res> {
  __$FieldUpdatedCopyWithImpl(
      _FieldUpdated _value, $Res Function(_FieldUpdated) _then)
      : super(_value, (v) => _then(v as _FieldUpdated));

  @override
  _FieldUpdated get _value => super._value as _FieldUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? field = freezed,
  }) {
    return _then(_FieldUpdated(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as QueryElement,
    ));
  }

  @override
  $QueryElementCopyWith<$Res> get field {
    return $QueryElementCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value));
    });
  }
}

/// @nodoc

class _$_FieldUpdated with DiagnosticableTreeMixin implements _FieldUpdated {
  const _$_FieldUpdated({required this.index, required this.field});

  @override
  final int index;
  @override
  final QueryElement field;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryFieldsEvent.fieldUpdated(index: $index, field: $field)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryFieldsEvent.fieldUpdated'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('field', field));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FieldUpdated &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(field);

  @JsonKey(ignore: true)
  @override
  _$FieldUpdatedCopyWith<_FieldUpdated> get copyWith =>
      __$FieldUpdatedCopyWithImpl<_FieldUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> fields) initialized,
    required TResult Function(QueryElement field) fieldAdded,
    required TResult Function(int index, QueryElement field) fieldUpdated,
    required TResult Function(QueryElement field) fieldCopied,
    required TResult Function(int index) fieldDeleted,
    required TResult Function(int oldIndex, int newIndex) fieldOrderChanged,
  }) {
    return fieldUpdated(index, field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> fields)? initialized,
    TResult Function(QueryElement field)? fieldAdded,
    TResult Function(int index, QueryElement field)? fieldUpdated,
    TResult Function(QueryElement field)? fieldCopied,
    TResult Function(int index)? fieldDeleted,
    TResult Function(int oldIndex, int newIndex)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldUpdated != null) {
      return fieldUpdated(index, field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryFieldAdded value) fieldAdded,
    required TResult Function(_FieldUpdated value) fieldUpdated,
    required TResult Function(_FieldCopied value) fieldCopied,
    required TResult Function(_FieldDeleted value) fieldDeleted,
    required TResult Function(_FieldOrderChanged value) fieldOrderChanged,
  }) {
    return fieldUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryFieldAdded value)? fieldAdded,
    TResult Function(_FieldUpdated value)? fieldUpdated,
    TResult Function(_FieldCopied value)? fieldCopied,
    TResult Function(_FieldDeleted value)? fieldDeleted,
    TResult Function(_FieldOrderChanged value)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldUpdated != null) {
      return fieldUpdated(this);
    }
    return orElse();
  }
}

abstract class _FieldUpdated implements QueryFieldsEvent {
  const factory _FieldUpdated(
      {required int index, required QueryElement field}) = _$_FieldUpdated;

  int get index => throw _privateConstructorUsedError;
  QueryElement get field => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FieldUpdatedCopyWith<_FieldUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FieldCopiedCopyWith<$Res> {
  factory _$FieldCopiedCopyWith(
          _FieldCopied value, $Res Function(_FieldCopied) then) =
      __$FieldCopiedCopyWithImpl<$Res>;
  $Res call({QueryElement field});

  $QueryElementCopyWith<$Res> get field;
}

/// @nodoc
class __$FieldCopiedCopyWithImpl<$Res>
    extends _$QueryFieldsEventCopyWithImpl<$Res>
    implements _$FieldCopiedCopyWith<$Res> {
  __$FieldCopiedCopyWithImpl(
      _FieldCopied _value, $Res Function(_FieldCopied) _then)
      : super(_value, (v) => _then(v as _FieldCopied));

  @override
  _FieldCopied get _value => super._value as _FieldCopied;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_FieldCopied(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as QueryElement,
    ));
  }

  @override
  $QueryElementCopyWith<$Res> get field {
    return $QueryElementCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value));
    });
  }
}

/// @nodoc

class _$_FieldCopied with DiagnosticableTreeMixin implements _FieldCopied {
  const _$_FieldCopied({required this.field});

  @override
  final QueryElement field;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryFieldsEvent.fieldCopied(field: $field)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryFieldsEvent.fieldCopied'))
      ..add(DiagnosticsProperty('field', field));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FieldCopied &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(field);

  @JsonKey(ignore: true)
  @override
  _$FieldCopiedCopyWith<_FieldCopied> get copyWith =>
      __$FieldCopiedCopyWithImpl<_FieldCopied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> fields) initialized,
    required TResult Function(QueryElement field) fieldAdded,
    required TResult Function(int index, QueryElement field) fieldUpdated,
    required TResult Function(QueryElement field) fieldCopied,
    required TResult Function(int index) fieldDeleted,
    required TResult Function(int oldIndex, int newIndex) fieldOrderChanged,
  }) {
    return fieldCopied(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> fields)? initialized,
    TResult Function(QueryElement field)? fieldAdded,
    TResult Function(int index, QueryElement field)? fieldUpdated,
    TResult Function(QueryElement field)? fieldCopied,
    TResult Function(int index)? fieldDeleted,
    TResult Function(int oldIndex, int newIndex)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldCopied != null) {
      return fieldCopied(field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryFieldAdded value) fieldAdded,
    required TResult Function(_FieldUpdated value) fieldUpdated,
    required TResult Function(_FieldCopied value) fieldCopied,
    required TResult Function(_FieldDeleted value) fieldDeleted,
    required TResult Function(_FieldOrderChanged value) fieldOrderChanged,
  }) {
    return fieldCopied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryFieldAdded value)? fieldAdded,
    TResult Function(_FieldUpdated value)? fieldUpdated,
    TResult Function(_FieldCopied value)? fieldCopied,
    TResult Function(_FieldDeleted value)? fieldDeleted,
    TResult Function(_FieldOrderChanged value)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldCopied != null) {
      return fieldCopied(this);
    }
    return orElse();
  }
}

abstract class _FieldCopied implements QueryFieldsEvent {
  const factory _FieldCopied({required QueryElement field}) = _$_FieldCopied;

  QueryElement get field => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FieldCopiedCopyWith<_FieldCopied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FieldDeletedCopyWith<$Res> {
  factory _$FieldDeletedCopyWith(
          _FieldDeleted value, $Res Function(_FieldDeleted) then) =
      __$FieldDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$FieldDeletedCopyWithImpl<$Res>
    extends _$QueryFieldsEventCopyWithImpl<$Res>
    implements _$FieldDeletedCopyWith<$Res> {
  __$FieldDeletedCopyWithImpl(
      _FieldDeleted _value, $Res Function(_FieldDeleted) _then)
      : super(_value, (v) => _then(v as _FieldDeleted));

  @override
  _FieldDeleted get _value => super._value as _FieldDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_FieldDeleted(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FieldDeleted with DiagnosticableTreeMixin implements _FieldDeleted {
  const _$_FieldDeleted({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryFieldsEvent.fieldDeleted(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryFieldsEvent.fieldDeleted'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FieldDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$FieldDeletedCopyWith<_FieldDeleted> get copyWith =>
      __$FieldDeletedCopyWithImpl<_FieldDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> fields) initialized,
    required TResult Function(QueryElement field) fieldAdded,
    required TResult Function(int index, QueryElement field) fieldUpdated,
    required TResult Function(QueryElement field) fieldCopied,
    required TResult Function(int index) fieldDeleted,
    required TResult Function(int oldIndex, int newIndex) fieldOrderChanged,
  }) {
    return fieldDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> fields)? initialized,
    TResult Function(QueryElement field)? fieldAdded,
    TResult Function(int index, QueryElement field)? fieldUpdated,
    TResult Function(QueryElement field)? fieldCopied,
    TResult Function(int index)? fieldDeleted,
    TResult Function(int oldIndex, int newIndex)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldDeleted != null) {
      return fieldDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryFieldAdded value) fieldAdded,
    required TResult Function(_FieldUpdated value) fieldUpdated,
    required TResult Function(_FieldCopied value) fieldCopied,
    required TResult Function(_FieldDeleted value) fieldDeleted,
    required TResult Function(_FieldOrderChanged value) fieldOrderChanged,
  }) {
    return fieldDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryFieldAdded value)? fieldAdded,
    TResult Function(_FieldUpdated value)? fieldUpdated,
    TResult Function(_FieldCopied value)? fieldCopied,
    TResult Function(_FieldDeleted value)? fieldDeleted,
    TResult Function(_FieldOrderChanged value)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldDeleted != null) {
      return fieldDeleted(this);
    }
    return orElse();
  }
}

abstract class _FieldDeleted implements QueryFieldsEvent {
  const factory _FieldDeleted({required int index}) = _$_FieldDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FieldDeletedCopyWith<_FieldDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FieldOrderChangedCopyWith<$Res> {
  factory _$FieldOrderChangedCopyWith(
          _FieldOrderChanged value, $Res Function(_FieldOrderChanged) then) =
      __$FieldOrderChangedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$FieldOrderChangedCopyWithImpl<$Res>
    extends _$QueryFieldsEventCopyWithImpl<$Res>
    implements _$FieldOrderChangedCopyWith<$Res> {
  __$FieldOrderChangedCopyWithImpl(
      _FieldOrderChanged _value, $Res Function(_FieldOrderChanged) _then)
      : super(_value, (v) => _then(v as _FieldOrderChanged));

  @override
  _FieldOrderChanged get _value => super._value as _FieldOrderChanged;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_FieldOrderChanged(
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

class _$_FieldOrderChanged
    with DiagnosticableTreeMixin
    implements _FieldOrderChanged {
  const _$_FieldOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryFieldsEvent.fieldOrderChanged(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryFieldsEvent.fieldOrderChanged'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FieldOrderChanged &&
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
  _$FieldOrderChangedCopyWith<_FieldOrderChanged> get copyWith =>
      __$FieldOrderChangedCopyWithImpl<_FieldOrderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryElement> fields) initialized,
    required TResult Function(QueryElement field) fieldAdded,
    required TResult Function(int index, QueryElement field) fieldUpdated,
    required TResult Function(QueryElement field) fieldCopied,
    required TResult Function(int index) fieldDeleted,
    required TResult Function(int oldIndex, int newIndex) fieldOrderChanged,
  }) {
    return fieldOrderChanged(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryElement> fields)? initialized,
    TResult Function(QueryElement field)? fieldAdded,
    TResult Function(int index, QueryElement field)? fieldUpdated,
    TResult Function(QueryElement field)? fieldCopied,
    TResult Function(int index)? fieldDeleted,
    TResult Function(int oldIndex, int newIndex)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldOrderChanged != null) {
      return fieldOrderChanged(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_QueryFieldAdded value) fieldAdded,
    required TResult Function(_FieldUpdated value) fieldUpdated,
    required TResult Function(_FieldCopied value) fieldCopied,
    required TResult Function(_FieldDeleted value) fieldDeleted,
    required TResult Function(_FieldOrderChanged value) fieldOrderChanged,
  }) {
    return fieldOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_QueryFieldAdded value)? fieldAdded,
    TResult Function(_FieldUpdated value)? fieldUpdated,
    TResult Function(_FieldCopied value)? fieldCopied,
    TResult Function(_FieldDeleted value)? fieldDeleted,
    TResult Function(_FieldOrderChanged value)? fieldOrderChanged,
    required TResult orElse(),
  }) {
    if (fieldOrderChanged != null) {
      return fieldOrderChanged(this);
    }
    return orElse();
  }
}

abstract class _FieldOrderChanged implements QueryFieldsEvent {
  const factory _FieldOrderChanged(
      {required int oldIndex, required int newIndex}) = _$_FieldOrderChanged;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FieldOrderChangedCopyWith<_FieldOrderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueryFieldsStateTearOff {
  const _$QueryFieldsStateTearOff();

  _QueryFieldsState call({required List<QueryElement> fields}) {
    return _QueryFieldsState(
      fields: fields,
    );
  }
}

/// @nodoc
const $QueryFieldsState = _$QueryFieldsStateTearOff();

/// @nodoc
mixin _$QueryFieldsState {
  List<QueryElement> get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryFieldsStateCopyWith<QueryFieldsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryFieldsStateCopyWith<$Res> {
  factory $QueryFieldsStateCopyWith(
          QueryFieldsState value, $Res Function(QueryFieldsState) then) =
      _$QueryFieldsStateCopyWithImpl<$Res>;
  $Res call({List<QueryElement> fields});
}

/// @nodoc
class _$QueryFieldsStateCopyWithImpl<$Res>
    implements $QueryFieldsStateCopyWith<$Res> {
  _$QueryFieldsStateCopyWithImpl(this._value, this._then);

  final QueryFieldsState _value;
  // ignore: unused_field
  final $Res Function(QueryFieldsState) _then;

  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc
abstract class _$QueryFieldsStateCopyWith<$Res>
    implements $QueryFieldsStateCopyWith<$Res> {
  factory _$QueryFieldsStateCopyWith(
          _QueryFieldsState value, $Res Function(_QueryFieldsState) then) =
      __$QueryFieldsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<QueryElement> fields});
}

/// @nodoc
class __$QueryFieldsStateCopyWithImpl<$Res>
    extends _$QueryFieldsStateCopyWithImpl<$Res>
    implements _$QueryFieldsStateCopyWith<$Res> {
  __$QueryFieldsStateCopyWithImpl(
      _QueryFieldsState _value, $Res Function(_QueryFieldsState) _then)
      : super(_value, (v) => _then(v as _QueryFieldsState));

  @override
  _QueryFieldsState get _value => super._value as _QueryFieldsState;

  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_QueryFieldsState(
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
    ));
  }
}

/// @nodoc

class _$_QueryFieldsState
    with DiagnosticableTreeMixin
    implements _QueryFieldsState {
  const _$_QueryFieldsState({required this.fields});

  @override
  final List<QueryElement> fields;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryFieldsState(fields: $fields)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryFieldsState'))
      ..add(DiagnosticsProperty('fields', fields));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryFieldsState &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fields);

  @JsonKey(ignore: true)
  @override
  _$QueryFieldsStateCopyWith<_QueryFieldsState> get copyWith =>
      __$QueryFieldsStateCopyWithImpl<_QueryFieldsState>(this, _$identity);
}

abstract class _QueryFieldsState implements QueryFieldsState {
  const factory _QueryFieldsState({required List<QueryElement> fields}) =
      _$_QueryFieldsState;

  @override
  List<QueryElement> get fields => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryFieldsStateCopyWith<_QueryFieldsState> get copyWith =>
      throw _privateConstructorUsedError;
}
