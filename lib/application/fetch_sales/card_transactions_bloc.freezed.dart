// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'card_transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CardTransactionsStateTearOff {
  const _$CardTransactionsStateTearOff();

// ignore: unused_element
  _CardTransactionsState call(
      {bool isLoading,
      Option<Failure> fetchingSalesFailure,
      List<CardTransaction> sales}) {
    return _CardTransactionsState(
      isLoading: isLoading,
      fetchingSalesFailure: fetchingSalesFailure,
      sales: sales,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CardTransactionsState = _$CardTransactionsStateTearOff();

/// @nodoc
mixin _$CardTransactionsState {
  bool get isLoading;
  Option<Failure> get fetchingSalesFailure;
  List<CardTransaction> get sales;

  @JsonKey(ignore: true)
  $CardTransactionsStateCopyWith<CardTransactionsState> get copyWith;
}

/// @nodoc
abstract class $CardTransactionsStateCopyWith<$Res> {
  factory $CardTransactionsStateCopyWith(CardTransactionsState value,
          $Res Function(CardTransactionsState) then) =
      _$CardTransactionsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Failure> fetchingSalesFailure,
      List<CardTransaction> sales});
}

/// @nodoc
class _$CardTransactionsStateCopyWithImpl<$Res>
    implements $CardTransactionsStateCopyWith<$Res> {
  _$CardTransactionsStateCopyWithImpl(this._value, this._then);

  final CardTransactionsState _value;
  // ignore: unused_field
  final $Res Function(CardTransactionsState) _then;

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
          : fetchingSalesFailure as Option<Failure>,
      sales: sales == freezed ? _value.sales : sales as List<CardTransaction>,
    ));
  }
}

/// @nodoc
abstract class _$CardTransactionsStateCopyWith<$Res>
    implements $CardTransactionsStateCopyWith<$Res> {
  factory _$CardTransactionsStateCopyWith(_CardTransactionsState value,
          $Res Function(_CardTransactionsState) then) =
      __$CardTransactionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Failure> fetchingSalesFailure,
      List<CardTransaction> sales});
}

/// @nodoc
class __$CardTransactionsStateCopyWithImpl<$Res>
    extends _$CardTransactionsStateCopyWithImpl<$Res>
    implements _$CardTransactionsStateCopyWith<$Res> {
  __$CardTransactionsStateCopyWithImpl(_CardTransactionsState _value,
      $Res Function(_CardTransactionsState) _then)
      : super(_value, (v) => _then(v as _CardTransactionsState));

  @override
  _CardTransactionsState get _value => super._value as _CardTransactionsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object fetchingSalesFailure = freezed,
    Object sales = freezed,
  }) {
    return _then(_CardTransactionsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Option<Failure>,
      sales: sales == freezed ? _value.sales : sales as List<CardTransaction>,
    ));
  }
}

/// @nodoc
class _$_CardTransactionsState implements _CardTransactionsState {
  const _$_CardTransactionsState(
      {this.isLoading, this.fetchingSalesFailure, this.sales});

  @override
  final bool isLoading;
  @override
  final Option<Failure> fetchingSalesFailure;
  @override
  final List<CardTransaction> sales;

  @override
  String toString() {
    return 'CardTransactionsState(isLoading: $isLoading, fetchingSalesFailure: $fetchingSalesFailure, sales: $sales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardTransactionsState &&
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
  _$CardTransactionsStateCopyWith<_CardTransactionsState> get copyWith =>
      __$CardTransactionsStateCopyWithImpl<_CardTransactionsState>(
          this, _$identity);
}

abstract class _CardTransactionsState implements CardTransactionsState {
  const factory _CardTransactionsState(
      {bool isLoading,
      Option<Failure> fetchingSalesFailure,
      List<CardTransaction> sales}) = _$_CardTransactionsState;

  @override
  bool get isLoading;
  @override
  Option<Failure> get fetchingSalesFailure;
  @override
  List<CardTransaction> get sales;
  @override
  @JsonKey(ignore: true)
  _$CardTransactionsStateCopyWith<_CardTransactionsState> get copyWith;
}
