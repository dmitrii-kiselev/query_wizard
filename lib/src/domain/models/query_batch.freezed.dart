// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_batch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryBatchTearOff {
  const _$QueryBatchTearOff();

  _QueryBatch call(
      {required String name,
      required List<QueryElement> sources,
      required List<Query> queries,
      required Map<String, Map<String, String>> aliases,
      required QueryType queryType}) {
    return _QueryBatch(
      name: name,
      sources: sources,
      queries: queries,
      aliases: aliases,
      queryType: queryType,
    );
  }
}

/// @nodoc
const $QueryBatch = _$QueryBatchTearOff();

/// @nodoc
mixin _$QueryBatch {
  String get name => throw _privateConstructorUsedError;
  List<QueryElement> get sources => throw _privateConstructorUsedError;
  List<Query> get queries => throw _privateConstructorUsedError;
  Map<String, Map<String, String>> get aliases =>
      throw _privateConstructorUsedError;
  QueryType get queryType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryBatchCopyWith<QueryBatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryBatchCopyWith<$Res> {
  factory $QueryBatchCopyWith(
          QueryBatch value, $Res Function(QueryBatch) then) =
      _$QueryBatchCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<QueryElement> sources,
      List<Query> queries,
      Map<String, Map<String, String>> aliases,
      QueryType queryType});
}

/// @nodoc
class _$QueryBatchCopyWithImpl<$Res> implements $QueryBatchCopyWith<$Res> {
  _$QueryBatchCopyWithImpl(this._value, this._then);

  final QueryBatch _value;
  // ignore: unused_field
  final $Res Function(QueryBatch) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? sources = freezed,
    Object? queries = freezed,
    Object? aliases = freezed,
    Object? queryType = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
      queries: queries == freezed
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<Query>,
      aliases: aliases == freezed
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
      queryType: queryType == freezed
          ? _value.queryType
          : queryType // ignore: cast_nullable_to_non_nullable
              as QueryType,
    ));
  }
}

/// @nodoc
abstract class _$QueryBatchCopyWith<$Res> implements $QueryBatchCopyWith<$Res> {
  factory _$QueryBatchCopyWith(
          _QueryBatch value, $Res Function(_QueryBatch) then) =
      __$QueryBatchCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<QueryElement> sources,
      List<Query> queries,
      Map<String, Map<String, String>> aliases,
      QueryType queryType});
}

/// @nodoc
class __$QueryBatchCopyWithImpl<$Res> extends _$QueryBatchCopyWithImpl<$Res>
    implements _$QueryBatchCopyWith<$Res> {
  __$QueryBatchCopyWithImpl(
      _QueryBatch _value, $Res Function(_QueryBatch) _then)
      : super(_value, (v) => _then(v as _QueryBatch));

  @override
  _QueryBatch get _value => super._value as _QueryBatch;

  @override
  $Res call({
    Object? name = freezed,
    Object? sources = freezed,
    Object? queries = freezed,
    Object? aliases = freezed,
    Object? queryType = freezed,
  }) {
    return _then(_QueryBatch(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
      queries: queries == freezed
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<Query>,
      aliases: aliases == freezed
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
      queryType: queryType == freezed
          ? _value.queryType
          : queryType // ignore: cast_nullable_to_non_nullable
              as QueryType,
    ));
  }
}

/// @nodoc

class _$_QueryBatch with DiagnosticableTreeMixin implements _QueryBatch {
  const _$_QueryBatch(
      {required this.name,
      required this.sources,
      required this.queries,
      required this.aliases,
      required this.queryType});

  @override
  final String name;
  @override
  final List<QueryElement> sources;
  @override
  final List<Query> queries;
  @override
  final Map<String, Map<String, String>> aliases;
  @override
  final QueryType queryType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryBatch(name: $name, sources: $sources, queries: $queries, aliases: $aliases, queryType: $queryType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryBatch'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('sources', sources))
      ..add(DiagnosticsProperty('queries', queries))
      ..add(DiagnosticsProperty('aliases', aliases))
      ..add(DiagnosticsProperty('queryType', queryType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryBatch &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality()
                    .equals(other.sources, sources)) &&
            (identical(other.queries, queries) ||
                const DeepCollectionEquality()
                    .equals(other.queries, queries)) &&
            (identical(other.aliases, aliases) ||
                const DeepCollectionEquality()
                    .equals(other.aliases, aliases)) &&
            (identical(other.queryType, queryType) ||
                const DeepCollectionEquality()
                    .equals(other.queryType, queryType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sources) ^
      const DeepCollectionEquality().hash(queries) ^
      const DeepCollectionEquality().hash(aliases) ^
      const DeepCollectionEquality().hash(queryType);

  @JsonKey(ignore: true)
  @override
  _$QueryBatchCopyWith<_QueryBatch> get copyWith =>
      __$QueryBatchCopyWithImpl<_QueryBatch>(this, _$identity);
}

abstract class _QueryBatch implements QueryBatch {
  const factory _QueryBatch(
      {required String name,
      required List<QueryElement> sources,
      required List<Query> queries,
      required Map<String, Map<String, String>> aliases,
      required QueryType queryType}) = _$_QueryBatch;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<QueryElement> get sources => throw _privateConstructorUsedError;
  @override
  List<Query> get queries => throw _privateConstructorUsedError;
  @override
  Map<String, Map<String, String>> get aliases =>
      throw _privateConstructorUsedError;
  @override
  QueryType get queryType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryBatchCopyWith<_QueryBatch> get copyWith =>
      throw _privateConstructorUsedError;
}
