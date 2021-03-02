// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_sales_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchSalesStateTearOff {
  const _$FetchSalesStateTearOff();

// ignore: unused_element
  _FetchSalesState call(
      {bool isLoading,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales}) {
    return _FetchSalesState(
      isLoading: isLoading,
      fetchingSalesFailure: fetchingSalesFailure,
      sales: sales,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchSalesState = _$FetchSalesStateTearOff();

/// @nodoc
mixin _$FetchSalesState {
  bool get isLoading;
  Failure get fetchingSalesFailure;
  List<SaleTransaction> get sales;

  @JsonKey(ignore: true)
  $FetchSalesStateCopyWith<FetchSalesState> get copyWith;
}

/// @nodoc
abstract class $FetchSalesStateCopyWith<$Res> {
  factory $FetchSalesStateCopyWith(
          FetchSalesState value, $Res Function(FetchSalesState) then) =
      _$FetchSalesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales});
}

/// @nodoc
class _$FetchSalesStateCopyWithImpl<$Res>
    implements $FetchSalesStateCopyWith<$Res> {
  _$FetchSalesStateCopyWithImpl(this._value, this._then);

  final FetchSalesState _value;
  // ignore: unused_field
  final $Res Function(FetchSalesState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object fetchingSalesFailure = freezed,
    Object sales = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Failure,
      sales: sales == freezed ? _value.sales : sales as List<SaleTransaction>,
    ));
  }
}

/// @nodoc
abstract class _$FetchSalesStateCopyWith<$Res>
    implements $FetchSalesStateCopyWith<$Res> {
  factory _$FetchSalesStateCopyWith(
          _FetchSalesState value, $Res Function(_FetchSalesState) then) =
      __$FetchSalesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales});
}

/// @nodoc
class __$FetchSalesStateCopyWithImpl<$Res>
    extends _$FetchSalesStateCopyWithImpl<$Res>
    implements _$FetchSalesStateCopyWith<$Res> {
  __$FetchSalesStateCopyWithImpl(
      _FetchSalesState _value, $Res Function(_FetchSalesState) _then)
      : super(_value, (v) => _then(v as _FetchSalesState));

  @override
  _FetchSalesState get _value => super._value as _FetchSalesState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object fetchingSalesFailure = freezed,
    Object sales = freezed,
  }) {
    return _then(_FetchSalesState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Failure,
      sales: sales == freezed ? _value.sales : sales as List<SaleTransaction>,
    ));
  }
}

/// @nodoc
class _$_FetchSalesState implements _FetchSalesState {
  const _$_FetchSalesState(
      {this.isLoading, this.fetchingSalesFailure, this.sales});

  @override
  final bool isLoading;
  @override
  final Failure fetchingSalesFailure;
  @override
  final List<SaleTransaction> sales;

  @override
  String toString() {
    return 'FetchSalesState(isLoading: $isLoading, fetchingSalesFailure: $fetchingSalesFailure, sales: $sales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSalesState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.fetchingSalesFailure, fetchingSalesFailure) ||
                const DeepCollectionEquality().equals(
                    other.fetchingSalesFailure, fetchingSalesFailure)) &&
            (identical(other.sales, sales) ||
                const DeepCollectionEquality().equals(other.sales, sales)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(fetchingSalesFailure) ^
      const DeepCollectionEquality().hash(sales);

  @JsonKey(ignore: true)
  @override
  _$FetchSalesStateCopyWith<_FetchSalesState> get copyWith =>
      __$FetchSalesStateCopyWithImpl<_FetchSalesState>(this, _$identity);
}

abstract class _FetchSalesState implements FetchSalesState {
  const factory _FetchSalesState(
      {bool isLoading,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales}) = _$_FetchSalesState;

  @override
  bool get isLoading;
  @override
  Failure get fetchingSalesFailure;
  @override
  List<SaleTransaction> get sales;
  @override
  @JsonKey(ignore: true)
  _$FetchSalesStateCopyWith<_FetchSalesState> get copyWith;
}
