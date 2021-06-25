// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryOrdersEventTearOff {
  const _$QueryOrdersEventTearOff();

  _Initialized initialized({required List<QueryOrder> orders}) {
    return _Initialized(
      orders: orders,
    );
  }

  _OrderAdded orderAdded({required QueryOrder order}) {
    return _OrderAdded(
      order: order,
    );
  }

  _OrderUpdated orderUpdated({required int index, required QueryOrder order}) {
    return _OrderUpdated(
      index: index,
      order: order,
    );
  }

  _OrderDeleted orderDeleted({required int index}) {
    return _OrderDeleted(
      index: index,
    );
  }

  _OrderOrderChanged orderChanged(
      {required int oldIndex, required int newIndex}) {
    return _OrderOrderChanged(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $QueryOrdersEvent = _$QueryOrdersEventTearOff();

/// @nodoc
mixin _$QueryOrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryOrder> orders) initialized,
    required TResult Function(QueryOrder order) orderAdded,
    required TResult Function(int index, QueryOrder order) orderUpdated,
    required TResult Function(int index) orderDeleted,
    required TResult Function(int oldIndex, int newIndex) orderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryOrder> orders)? initialized,
    TResult Function(QueryOrder order)? orderAdded,
    TResult Function(int index, QueryOrder order)? orderUpdated,
    TResult Function(int index)? orderDeleted,
    TResult Function(int oldIndex, int newIndex)? orderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_OrderAdded value) orderAdded,
    required TResult Function(_OrderUpdated value) orderUpdated,
    required TResult Function(_OrderDeleted value) orderDeleted,
    required TResult Function(_OrderOrderChanged value) orderChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_OrderAdded value)? orderAdded,
    TResult Function(_OrderUpdated value)? orderUpdated,
    TResult Function(_OrderDeleted value)? orderDeleted,
    TResult Function(_OrderOrderChanged value)? orderChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryOrdersEventCopyWith<$Res> {
  factory $QueryOrdersEventCopyWith(
          QueryOrdersEvent value, $Res Function(QueryOrdersEvent) then) =
      _$QueryOrdersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryOrdersEventCopyWithImpl<$Res>
    implements $QueryOrdersEventCopyWith<$Res> {
  _$QueryOrdersEventCopyWithImpl(this._value, this._then);

  final QueryOrdersEvent _value;
  // ignore: unused_field
  final $Res Function(QueryOrdersEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({List<QueryOrder> orders});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QueryOrdersEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_Initialized(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<QueryOrder>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized({required this.orders});

  @override
  final List<QueryOrder> orders;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryOrdersEvent.initialized(orders: $orders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryOrdersEvent.initialized'))
      ..add(DiagnosticsProperty('orders', orders));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orders);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryOrder> orders) initialized,
    required TResult Function(QueryOrder order) orderAdded,
    required TResult Function(int index, QueryOrder order) orderUpdated,
    required TResult Function(int index) orderDeleted,
    required TResult Function(int oldIndex, int newIndex) orderChanged,
  }) {
    return initialized(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryOrder> orders)? initialized,
    TResult Function(QueryOrder order)? orderAdded,
    TResult Function(int index, QueryOrder order)? orderUpdated,
    TResult Function(int index)? orderDeleted,
    TResult Function(int oldIndex, int newIndex)? orderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_OrderAdded value) orderAdded,
    required TResult Function(_OrderUpdated value) orderUpdated,
    required TResult Function(_OrderDeleted value) orderDeleted,
    required TResult Function(_OrderOrderChanged value) orderChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_OrderAdded value)? orderAdded,
    TResult Function(_OrderUpdated value)? orderUpdated,
    TResult Function(_OrderDeleted value)? orderDeleted,
    TResult Function(_OrderOrderChanged value)? orderChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QueryOrdersEvent {
  const factory _Initialized({required List<QueryOrder> orders}) =
      _$_Initialized;

  List<QueryOrder> get orders => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OrderAddedCopyWith<$Res> {
  factory _$OrderAddedCopyWith(
          _OrderAdded value, $Res Function(_OrderAdded) then) =
      __$OrderAddedCopyWithImpl<$Res>;
  $Res call({QueryOrder order});

  $QueryOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$OrderAddedCopyWithImpl<$Res>
    extends _$QueryOrdersEventCopyWithImpl<$Res>
    implements _$OrderAddedCopyWith<$Res> {
  __$OrderAddedCopyWithImpl(
      _OrderAdded _value, $Res Function(_OrderAdded) _then)
      : super(_value, (v) => _then(v as _OrderAdded));

  @override
  _OrderAdded get _value => super._value as _OrderAdded;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_OrderAdded(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as QueryOrder,
    ));
  }

  @override
  $QueryOrderCopyWith<$Res> get order {
    return $QueryOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$_OrderAdded with DiagnosticableTreeMixin implements _OrderAdded {
  const _$_OrderAdded({required this.order});

  @override
  final QueryOrder order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryOrdersEvent.orderAdded(order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryOrdersEvent.orderAdded'))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderAdded &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$OrderAddedCopyWith<_OrderAdded> get copyWith =>
      __$OrderAddedCopyWithImpl<_OrderAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryOrder> orders) initialized,
    required TResult Function(QueryOrder order) orderAdded,
    required TResult Function(int index, QueryOrder order) orderUpdated,
    required TResult Function(int index) orderDeleted,
    required TResult Function(int oldIndex, int newIndex) orderChanged,
  }) {
    return orderAdded(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryOrder> orders)? initialized,
    TResult Function(QueryOrder order)? orderAdded,
    TResult Function(int index, QueryOrder order)? orderUpdated,
    TResult Function(int index)? orderDeleted,
    TResult Function(int oldIndex, int newIndex)? orderChanged,
    required TResult orElse(),
  }) {
    if (orderAdded != null) {
      return orderAdded(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_OrderAdded value) orderAdded,
    required TResult Function(_OrderUpdated value) orderUpdated,
    required TResult Function(_OrderDeleted value) orderDeleted,
    required TResult Function(_OrderOrderChanged value) orderChanged,
  }) {
    return orderAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_OrderAdded value)? orderAdded,
    TResult Function(_OrderUpdated value)? orderUpdated,
    TResult Function(_OrderDeleted value)? orderDeleted,
    TResult Function(_OrderOrderChanged value)? orderChanged,
    required TResult orElse(),
  }) {
    if (orderAdded != null) {
      return orderAdded(this);
    }
    return orElse();
  }
}

abstract class _OrderAdded implements QueryOrdersEvent {
  const factory _OrderAdded({required QueryOrder order}) = _$_OrderAdded;

  QueryOrder get order => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OrderAddedCopyWith<_OrderAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OrderUpdatedCopyWith<$Res> {
  factory _$OrderUpdatedCopyWith(
          _OrderUpdated value, $Res Function(_OrderUpdated) then) =
      __$OrderUpdatedCopyWithImpl<$Res>;
  $Res call({int index, QueryOrder order});

  $QueryOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$OrderUpdatedCopyWithImpl<$Res>
    extends _$QueryOrdersEventCopyWithImpl<$Res>
    implements _$OrderUpdatedCopyWith<$Res> {
  __$OrderUpdatedCopyWithImpl(
      _OrderUpdated _value, $Res Function(_OrderUpdated) _then)
      : super(_value, (v) => _then(v as _OrderUpdated));

  @override
  _OrderUpdated get _value => super._value as _OrderUpdated;

  @override
  $Res call({
    Object? index = freezed,
    Object? order = freezed,
  }) {
    return _then(_OrderUpdated(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as QueryOrder,
    ));
  }

  @override
  $QueryOrderCopyWith<$Res> get order {
    return $QueryOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$_OrderUpdated with DiagnosticableTreeMixin implements _OrderUpdated {
  const _$_OrderUpdated({required this.index, required this.order});

  @override
  final int index;
  @override
  final QueryOrder order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryOrdersEvent.orderUpdated(index: $index, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryOrdersEvent.orderUpdated'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderUpdated &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$OrderUpdatedCopyWith<_OrderUpdated> get copyWith =>
      __$OrderUpdatedCopyWithImpl<_OrderUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryOrder> orders) initialized,
    required TResult Function(QueryOrder order) orderAdded,
    required TResult Function(int index, QueryOrder order) orderUpdated,
    required TResult Function(int index) orderDeleted,
    required TResult Function(int oldIndex, int newIndex) orderChanged,
  }) {
    return orderUpdated(index, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryOrder> orders)? initialized,
    TResult Function(QueryOrder order)? orderAdded,
    TResult Function(int index, QueryOrder order)? orderUpdated,
    TResult Function(int index)? orderDeleted,
    TResult Function(int oldIndex, int newIndex)? orderChanged,
    required TResult orElse(),
  }) {
    if (orderUpdated != null) {
      return orderUpdated(index, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_OrderAdded value) orderAdded,
    required TResult Function(_OrderUpdated value) orderUpdated,
    required TResult Function(_OrderDeleted value) orderDeleted,
    required TResult Function(_OrderOrderChanged value) orderChanged,
  }) {
    return orderUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_OrderAdded value)? orderAdded,
    TResult Function(_OrderUpdated value)? orderUpdated,
    TResult Function(_OrderDeleted value)? orderDeleted,
    TResult Function(_OrderOrderChanged value)? orderChanged,
    required TResult orElse(),
  }) {
    if (orderUpdated != null) {
      return orderUpdated(this);
    }
    return orElse();
  }
}

abstract class _OrderUpdated implements QueryOrdersEvent {
  const factory _OrderUpdated({required int index, required QueryOrder order}) =
      _$_OrderUpdated;

  int get index => throw _privateConstructorUsedError;
  QueryOrder get order => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OrderUpdatedCopyWith<_OrderUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OrderDeletedCopyWith<$Res> {
  factory _$OrderDeletedCopyWith(
          _OrderDeleted value, $Res Function(_OrderDeleted) then) =
      __$OrderDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$OrderDeletedCopyWithImpl<$Res>
    extends _$QueryOrdersEventCopyWithImpl<$Res>
    implements _$OrderDeletedCopyWith<$Res> {
  __$OrderDeletedCopyWithImpl(
      _OrderDeleted _value, $Res Function(_OrderDeleted) _then)
      : super(_value, (v) => _then(v as _OrderDeleted));

  @override
  _OrderDeleted get _value => super._value as _OrderDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_OrderDeleted(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OrderDeleted with DiagnosticableTreeMixin implements _OrderDeleted {
  const _$_OrderDeleted({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryOrdersEvent.orderDeleted(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryOrdersEvent.orderDeleted'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$OrderDeletedCopyWith<_OrderDeleted> get copyWith =>
      __$OrderDeletedCopyWithImpl<_OrderDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryOrder> orders) initialized,
    required TResult Function(QueryOrder order) orderAdded,
    required TResult Function(int index, QueryOrder order) orderUpdated,
    required TResult Function(int index) orderDeleted,
    required TResult Function(int oldIndex, int newIndex) orderChanged,
  }) {
    return orderDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryOrder> orders)? initialized,
    TResult Function(QueryOrder order)? orderAdded,
    TResult Function(int index, QueryOrder order)? orderUpdated,
    TResult Function(int index)? orderDeleted,
    TResult Function(int oldIndex, int newIndex)? orderChanged,
    required TResult orElse(),
  }) {
    if (orderDeleted != null) {
      return orderDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_OrderAdded value) orderAdded,
    required TResult Function(_OrderUpdated value) orderUpdated,
    required TResult Function(_OrderDeleted value) orderDeleted,
    required TResult Function(_OrderOrderChanged value) orderChanged,
  }) {
    return orderDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_OrderAdded value)? orderAdded,
    TResult Function(_OrderUpdated value)? orderUpdated,
    TResult Function(_OrderDeleted value)? orderDeleted,
    TResult Function(_OrderOrderChanged value)? orderChanged,
    required TResult orElse(),
  }) {
    if (orderDeleted != null) {
      return orderDeleted(this);
    }
    return orElse();
  }
}

abstract class _OrderDeleted implements QueryOrdersEvent {
  const factory _OrderDeleted({required int index}) = _$_OrderDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OrderDeletedCopyWith<_OrderDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OrderOrderChangedCopyWith<$Res> {
  factory _$OrderOrderChangedCopyWith(
          _OrderOrderChanged value, $Res Function(_OrderOrderChanged) then) =
      __$OrderOrderChangedCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$OrderOrderChangedCopyWithImpl<$Res>
    extends _$QueryOrdersEventCopyWithImpl<$Res>
    implements _$OrderOrderChangedCopyWith<$Res> {
  __$OrderOrderChangedCopyWithImpl(
      _OrderOrderChanged _value, $Res Function(_OrderOrderChanged) _then)
      : super(_value, (v) => _then(v as _OrderOrderChanged));

  @override
  _OrderOrderChanged get _value => super._value as _OrderOrderChanged;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_OrderOrderChanged(
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

class _$_OrderOrderChanged
    with DiagnosticableTreeMixin
    implements _OrderOrderChanged {
  const _$_OrderOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryOrdersEvent.orderChanged(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryOrdersEvent.orderChanged'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderOrderChanged &&
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
  _$OrderOrderChangedCopyWith<_OrderOrderChanged> get copyWith =>
      __$OrderOrderChangedCopyWithImpl<_OrderOrderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QueryOrder> orders) initialized,
    required TResult Function(QueryOrder order) orderAdded,
    required TResult Function(int index, QueryOrder order) orderUpdated,
    required TResult Function(int index) orderDeleted,
    required TResult Function(int oldIndex, int newIndex) orderChanged,
  }) {
    return orderChanged(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QueryOrder> orders)? initialized,
    TResult Function(QueryOrder order)? orderAdded,
    TResult Function(int index, QueryOrder order)? orderUpdated,
    TResult Function(int index)? orderDeleted,
    TResult Function(int oldIndex, int newIndex)? orderChanged,
    required TResult orElse(),
  }) {
    if (orderChanged != null) {
      return orderChanged(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_OrderAdded value) orderAdded,
    required TResult Function(_OrderUpdated value) orderUpdated,
    required TResult Function(_OrderDeleted value) orderDeleted,
    required TResult Function(_OrderOrderChanged value) orderChanged,
  }) {
    return orderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_OrderAdded value)? orderAdded,
    TResult Function(_OrderUpdated value)? orderUpdated,
    TResult Function(_OrderDeleted value)? orderDeleted,
    TResult Function(_OrderOrderChanged value)? orderChanged,
    required TResult orElse(),
  }) {
    if (orderChanged != null) {
      return orderChanged(this);
    }
    return orElse();
  }
}

abstract class _OrderOrderChanged implements QueryOrdersEvent {
  const factory _OrderOrderChanged(
      {required int oldIndex, required int newIndex}) = _$_OrderOrderChanged;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OrderOrderChangedCopyWith<_OrderOrderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QueryOrdersStateTearOff {
  const _$QueryOrdersStateTearOff();

  _QueryOrdersState call(
      {required bool isChanging, required List<QueryOrder> orders}) {
    return _QueryOrdersState(
      isChanging: isChanging,
      orders: orders,
    );
  }
}

/// @nodoc
const $QueryOrdersState = _$QueryOrdersStateTearOff();

/// @nodoc
mixin _$QueryOrdersState {
  bool get isChanging => throw _privateConstructorUsedError;
  List<QueryOrder> get orders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryOrdersStateCopyWith<QueryOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryOrdersStateCopyWith<$Res> {
  factory $QueryOrdersStateCopyWith(
          QueryOrdersState value, $Res Function(QueryOrdersState) then) =
      _$QueryOrdersStateCopyWithImpl<$Res>;
  $Res call({bool isChanging, List<QueryOrder> orders});
}

/// @nodoc
class _$QueryOrdersStateCopyWithImpl<$Res>
    implements $QueryOrdersStateCopyWith<$Res> {
  _$QueryOrdersStateCopyWithImpl(this._value, this._then);

  final QueryOrdersState _value;
  // ignore: unused_field
  final $Res Function(QueryOrdersState) _then;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<QueryOrder>,
    ));
  }
}

/// @nodoc
abstract class _$QueryOrdersStateCopyWith<$Res>
    implements $QueryOrdersStateCopyWith<$Res> {
  factory _$QueryOrdersStateCopyWith(
          _QueryOrdersState value, $Res Function(_QueryOrdersState) then) =
      __$QueryOrdersStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isChanging, List<QueryOrder> orders});
}

/// @nodoc
class __$QueryOrdersStateCopyWithImpl<$Res>
    extends _$QueryOrdersStateCopyWithImpl<$Res>
    implements _$QueryOrdersStateCopyWith<$Res> {
  __$QueryOrdersStateCopyWithImpl(
      _QueryOrdersState _value, $Res Function(_QueryOrdersState) _then)
      : super(_value, (v) => _then(v as _QueryOrdersState));

  @override
  _QueryOrdersState get _value => super._value as _QueryOrdersState;

  @override
  $Res call({
    Object? isChanging = freezed,
    Object? orders = freezed,
  }) {
    return _then(_QueryOrdersState(
      isChanging: isChanging == freezed
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<QueryOrder>,
    ));
  }
}

/// @nodoc

class _$_QueryOrdersState
    with DiagnosticableTreeMixin
    implements _QueryOrdersState {
  const _$_QueryOrdersState({required this.isChanging, required this.orders});

  @override
  final bool isChanging;
  @override
  final List<QueryOrder> orders;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryOrdersState(isChanging: $isChanging, orders: $orders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryOrdersState'))
      ..add(DiagnosticsProperty('isChanging', isChanging))
      ..add(DiagnosticsProperty('orders', orders));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryOrdersState &&
            (identical(other.isChanging, isChanging) ||
                const DeepCollectionEquality()
                    .equals(other.isChanging, isChanging)) &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isChanging) ^
      const DeepCollectionEquality().hash(orders);

  @JsonKey(ignore: true)
  @override
  _$QueryOrdersStateCopyWith<_QueryOrdersState> get copyWith =>
      __$QueryOrdersStateCopyWithImpl<_QueryOrdersState>(this, _$identity);
}

abstract class _QueryOrdersState implements QueryOrdersState {
  const factory _QueryOrdersState(
      {required bool isChanging,
      required List<QueryOrder> orders}) = _$_QueryOrdersState;

  @override
  bool get isChanging => throw _privateConstructorUsedError;
  @override
  List<QueryOrder> get orders => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryOrdersStateCopyWith<_QueryOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
