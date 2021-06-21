// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryTearOff {
  const _$QueryTearOff();

  _Query call(
      {required String name,
      required List<QueryElement> sources,
      required List<QueryElement> tables,
      required List<QueryElement> fields,
      required List<QueryJoin> joins,
      required List<QueryGrouping> groupings,
      required List<QueryAggregate> aggregates,
      required List<QueryCondition> conditions,
      required List<QueryOrder> orders,
      required bool isTop,
      required int topCounter,
      required bool isDistinct}) {
    return _Query(
      name: name,
      sources: sources,
      tables: tables,
      fields: fields,
      joins: joins,
      groupings: groupings,
      aggregates: aggregates,
      conditions: conditions,
      orders: orders,
      isTop: isTop,
      topCounter: topCounter,
      isDistinct: isDistinct,
    );
  }
}

/// @nodoc
const $Query = _$QueryTearOff();

/// @nodoc
mixin _$Query {
  String get name => throw _privateConstructorUsedError;
  List<QueryElement> get sources => throw _privateConstructorUsedError;
  List<QueryElement> get tables => throw _privateConstructorUsedError;
  List<QueryElement> get fields => throw _privateConstructorUsedError;
  List<QueryJoin> get joins => throw _privateConstructorUsedError;
  List<QueryGrouping> get groupings => throw _privateConstructorUsedError;
  List<QueryAggregate> get aggregates => throw _privateConstructorUsedError;
  List<QueryCondition> get conditions => throw _privateConstructorUsedError;
  List<QueryOrder> get orders => throw _privateConstructorUsedError;
  bool get isTop => throw _privateConstructorUsedError;
  int get topCounter => throw _privateConstructorUsedError;
  bool get isDistinct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryCopyWith<Query> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryCopyWith<$Res> {
  factory $QueryCopyWith(Query value, $Res Function(Query) then) =
      _$QueryCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<QueryElement> sources,
      List<QueryElement> tables,
      List<QueryElement> fields,
      List<QueryJoin> joins,
      List<QueryGrouping> groupings,
      List<QueryAggregate> aggregates,
      List<QueryCondition> conditions,
      List<QueryOrder> orders,
      bool isTop,
      int topCounter,
      bool isDistinct});
}

/// @nodoc
class _$QueryCopyWithImpl<$Res> implements $QueryCopyWith<$Res> {
  _$QueryCopyWithImpl(this._value, this._then);

  final Query _value;
  // ignore: unused_field
  final $Res Function(Query) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? sources = freezed,
    Object? tables = freezed,
    Object? fields = freezed,
    Object? joins = freezed,
    Object? groupings = freezed,
    Object? aggregates = freezed,
    Object? conditions = freezed,
    Object? orders = freezed,
    Object? isTop = freezed,
    Object? topCounter = freezed,
    Object? isDistinct = freezed,
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
      tables: tables == freezed
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
      joins: joins == freezed
          ? _value.joins
          : joins // ignore: cast_nullable_to_non_nullable
              as List<QueryJoin>,
      groupings: groupings == freezed
          ? _value.groupings
          : groupings // ignore: cast_nullable_to_non_nullable
              as List<QueryGrouping>,
      aggregates: aggregates == freezed
          ? _value.aggregates
          : aggregates // ignore: cast_nullable_to_non_nullable
              as List<QueryAggregate>,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<QueryCondition>,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<QueryOrder>,
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
    ));
  }
}

/// @nodoc
abstract class _$QueryCopyWith<$Res> implements $QueryCopyWith<$Res> {
  factory _$QueryCopyWith(_Query value, $Res Function(_Query) then) =
      __$QueryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<QueryElement> sources,
      List<QueryElement> tables,
      List<QueryElement> fields,
      List<QueryJoin> joins,
      List<QueryGrouping> groupings,
      List<QueryAggregate> aggregates,
      List<QueryCondition> conditions,
      List<QueryOrder> orders,
      bool isTop,
      int topCounter,
      bool isDistinct});
}

/// @nodoc
class __$QueryCopyWithImpl<$Res> extends _$QueryCopyWithImpl<$Res>
    implements _$QueryCopyWith<$Res> {
  __$QueryCopyWithImpl(_Query _value, $Res Function(_Query) _then)
      : super(_value, (v) => _then(v as _Query));

  @override
  _Query get _value => super._value as _Query;

  @override
  $Res call({
    Object? name = freezed,
    Object? sources = freezed,
    Object? tables = freezed,
    Object? fields = freezed,
    Object? joins = freezed,
    Object? groupings = freezed,
    Object? aggregates = freezed,
    Object? conditions = freezed,
    Object? orders = freezed,
    Object? isTop = freezed,
    Object? topCounter = freezed,
    Object? isDistinct = freezed,
  }) {
    return _then(_Query(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
      tables: tables == freezed
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<QueryElement>,
      joins: joins == freezed
          ? _value.joins
          : joins // ignore: cast_nullable_to_non_nullable
              as List<QueryJoin>,
      groupings: groupings == freezed
          ? _value.groupings
          : groupings // ignore: cast_nullable_to_non_nullable
              as List<QueryGrouping>,
      aggregates: aggregates == freezed
          ? _value.aggregates
          : aggregates // ignore: cast_nullable_to_non_nullable
              as List<QueryAggregate>,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<QueryCondition>,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<QueryOrder>,
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
    ));
  }
}

/// @nodoc

class _$_Query with DiagnosticableTreeMixin implements _Query {
  const _$_Query(
      {required this.name,
      required this.sources,
      required this.tables,
      required this.fields,
      required this.joins,
      required this.groupings,
      required this.aggregates,
      required this.conditions,
      required this.orders,
      required this.isTop,
      required this.topCounter,
      required this.isDistinct});

  @override
  final String name;
  @override
  final List<QueryElement> sources;
  @override
  final List<QueryElement> tables;
  @override
  final List<QueryElement> fields;
  @override
  final List<QueryJoin> joins;
  @override
  final List<QueryGrouping> groupings;
  @override
  final List<QueryAggregate> aggregates;
  @override
  final List<QueryCondition> conditions;
  @override
  final List<QueryOrder> orders;
  @override
  final bool isTop;
  @override
  final int topCounter;
  @override
  final bool isDistinct;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Query(name: $name, sources: $sources, tables: $tables, fields: $fields, joins: $joins, groupings: $groupings, aggregates: $aggregates, conditions: $conditions, orders: $orders, isTop: $isTop, topCounter: $topCounter, isDistinct: $isDistinct)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Query'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('sources', sources))
      ..add(DiagnosticsProperty('tables', tables))
      ..add(DiagnosticsProperty('fields', fields))
      ..add(DiagnosticsProperty('joins', joins))
      ..add(DiagnosticsProperty('groupings', groupings))
      ..add(DiagnosticsProperty('aggregates', aggregates))
      ..add(DiagnosticsProperty('conditions', conditions))
      ..add(DiagnosticsProperty('orders', orders))
      ..add(DiagnosticsProperty('isTop', isTop))
      ..add(DiagnosticsProperty('topCounter', topCounter))
      ..add(DiagnosticsProperty('isDistinct', isDistinct));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Query &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality()
                    .equals(other.sources, sources)) &&
            (identical(other.tables, tables) ||
                const DeepCollectionEquality().equals(other.tables, tables)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.joins, joins) ||
                const DeepCollectionEquality().equals(other.joins, joins)) &&
            (identical(other.groupings, groupings) ||
                const DeepCollectionEquality()
                    .equals(other.groupings, groupings)) &&
            (identical(other.aggregates, aggregates) ||
                const DeepCollectionEquality()
                    .equals(other.aggregates, aggregates)) &&
            (identical(other.conditions, conditions) ||
                const DeepCollectionEquality()
                    .equals(other.conditions, conditions)) &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)) &&
            (identical(other.isTop, isTop) ||
                const DeepCollectionEquality().equals(other.isTop, isTop)) &&
            (identical(other.topCounter, topCounter) ||
                const DeepCollectionEquality()
                    .equals(other.topCounter, topCounter)) &&
            (identical(other.isDistinct, isDistinct) ||
                const DeepCollectionEquality()
                    .equals(other.isDistinct, isDistinct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sources) ^
      const DeepCollectionEquality().hash(tables) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(joins) ^
      const DeepCollectionEquality().hash(groupings) ^
      const DeepCollectionEquality().hash(aggregates) ^
      const DeepCollectionEquality().hash(conditions) ^
      const DeepCollectionEquality().hash(orders) ^
      const DeepCollectionEquality().hash(isTop) ^
      const DeepCollectionEquality().hash(topCounter) ^
      const DeepCollectionEquality().hash(isDistinct);

  @JsonKey(ignore: true)
  @override
  _$QueryCopyWith<_Query> get copyWith =>
      __$QueryCopyWithImpl<_Query>(this, _$identity);
}

abstract class _Query implements Query {
  const factory _Query(
      {required String name,
      required List<QueryElement> sources,
      required List<QueryElement> tables,
      required List<QueryElement> fields,
      required List<QueryJoin> joins,
      required List<QueryGrouping> groupings,
      required List<QueryAggregate> aggregates,
      required List<QueryCondition> conditions,
      required List<QueryOrder> orders,
      required bool isTop,
      required int topCounter,
      required bool isDistinct}) = _$_Query;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<QueryElement> get sources => throw _privateConstructorUsedError;
  @override
  List<QueryElement> get tables => throw _privateConstructorUsedError;
  @override
  List<QueryElement> get fields => throw _privateConstructorUsedError;
  @override
  List<QueryJoin> get joins => throw _privateConstructorUsedError;
  @override
  List<QueryGrouping> get groupings => throw _privateConstructorUsedError;
  @override
  List<QueryAggregate> get aggregates => throw _privateConstructorUsedError;
  @override
  List<QueryCondition> get conditions => throw _privateConstructorUsedError;
  @override
  List<QueryOrder> get orders => throw _privateConstructorUsedError;
  @override
  bool get isTop => throw _privateConstructorUsedError;
  @override
  int get topCounter => throw _privateConstructorUsedError;
  @override
  bool get isDistinct => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryCopyWith<_Query> get copyWith => throw _privateConstructorUsedError;
}
