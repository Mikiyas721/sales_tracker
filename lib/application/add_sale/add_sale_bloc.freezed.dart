// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_sale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddSaleStateTearOff {
  const _$AddSaleStateTearOff();

// ignore: unused_element
  _AddSaleState call(
      {Either<CardAmountFailure, CardAmount> totalAmount,
      Either<CashAmountFailure, CashAmount> paidAmount,
      Option<Failure> saleTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) {
    return _AddSaleState(
      totalAmount: totalAmount,
      paidAmount: paidAmount,
      saleTransactionFailure: saleTransactionFailure,
      hasSubmitted: hasSubmitted,
      hasRequested: hasRequested,
      requestCompleted: requestCompleted,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddSaleState = _$AddSaleStateTearOff();

/// @nodoc
mixin _$AddSaleState {
  Either<CardAmountFailure, CardAmount> get totalAmount;
  Either<CashAmountFailure, CashAmount> get paidAmount;
  Option<Failure> get saleTransactionFailure;
  bool get hasSubmitted;
  bool get hasRequested;
  bool get requestCompleted;

  @JsonKey(ignore: true)
  $AddSaleStateCopyWith<AddSaleState> get copyWith;
}

/// @nodoc
abstract class $AddSaleStateCopyWith<$Res> {
  factory $AddSaleStateCopyWith(
          AddSaleState value, $Res Function(AddSaleState) then) =
      _$AddSaleStateCopyWithImpl<$Res>;
  $Res call(
      {Either<CardAmountFailure, CardAmount> totalAmount,
      Either<CashAmountFailure, CashAmount> paidAmount,
      Option<Failure> saleTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class _$AddSaleStateCopyWithImpl<$Res> implements $AddSaleStateCopyWith<$Res> {
  _$AddSaleStateCopyWithImpl(this._value, this._then);

  final AddSaleState _value;
  // ignore: unused_field
  final $Res Function(AddSaleState) _then;

  @override
  $Res call({
    Object totalAmount = freezed,
    Object paidAmount = freezed,
    Object saleTransactionFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object requestCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount as Either<CardAmountFailure, CardAmount>,
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount as Either<CashAmountFailure, CashAmount>,
      saleTransactionFailure: saleTransactionFailure == freezed
          ? _value.saleTransactionFailure
          : saleTransactionFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
      requestCompleted: requestCompleted == freezed
          ? _value.requestCompleted
          : requestCompleted as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddSaleStateCopyWith<$Res>
    implements $AddSaleStateCopyWith<$Res> {
  factory _$AddSaleStateCopyWith(
          _AddSaleState value, $Res Function(_AddSaleState) then) =
      __$AddSaleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<CardAmountFailure, CardAmount> totalAmount,
      Either<CashAmountFailure, CashAmount> paidAmount,
      Option<Failure> saleTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class __$AddSaleStateCopyWithImpl<$Res> extends _$AddSaleStateCopyWithImpl<$Res>
    implements _$AddSaleStateCopyWith<$Res> {
  __$AddSaleStateCopyWithImpl(
      _AddSaleState _value, $Res Function(_AddSaleState) _then)
      : super(_value, (v) => _then(v as _AddSaleState));

  @override
  _AddSaleState get _value => super._value as _AddSaleState;

  @override
  $Res call({
    Object totalAmount = freezed,
    Object paidAmount = freezed,
    Object saleTransactionFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object requestCompleted = freezed,
  }) {
    return _then(_AddSaleState(
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount as Either<CardAmountFailure, CardAmount>,
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount as Either<CashAmountFailure, CashAmount>,
      saleTransactionFailure: saleTransactionFailure == freezed
          ? _value.saleTransactionFailure
          : saleTransactionFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
      requestCompleted: requestCompleted == freezed
          ? _value.requestCompleted
          : requestCompleted as bool,
    ));
  }
}

/// @nodoc
class _$_AddSaleState implements _AddSaleState {
  const _$_AddSaleState(
      {this.totalAmount,
      this.paidAmount,
      this.saleTransactionFailure,
      this.hasSubmitted,
      this.hasRequested,
      this.requestCompleted});

  @override
  final Either<CardAmountFailure, CardAmount> totalAmount;
  @override
  final Either<CashAmountFailure, CashAmount> paidAmount;
  @override
  final Option<Failure> saleTransactionFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool hasRequested;
  @override
  final bool requestCompleted;

  @override
  String toString() {
    return 'AddSaleState(totalAmount: $totalAmount, paidAmount: $paidAmount, saleTransactionFailure: $saleTransactionFailure, hasSubmitted: $hasSubmitted, hasRequested: $hasRequested, requestCompleted: $requestCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddSaleState &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.paidAmount, paidAmount) ||
                const DeepCollectionEquality()
                    .equals(other.paidAmount, paidAmount)) &&
            (identical(other.saleTransactionFailure, saleTransactionFailure) ||
                const DeepCollectionEquality().equals(
                    other.saleTransactionFailure, saleTransactionFailure)) &&
            (identical(other.hasSubmitted, hasSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.hasSubmitted, hasSubmitted)) &&
            (identical(other.hasRequested, hasRequested) ||
                const DeepCollectionEquality()
                    .equals(other.hasRequested, hasRequested)) &&
            (identical(other.requestCompleted, requestCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.requestCompleted, requestCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(paidAmount) ^
      const DeepCollectionEquality().hash(saleTransactionFailure) ^
      const DeepCollectionEquality().hash(hasSubmitted) ^
      const DeepCollectionEquality().hash(hasRequested) ^
      const DeepCollectionEquality().hash(requestCompleted);

  @JsonKey(ignore: true)
  @override
  _$AddSaleStateCopyWith<_AddSaleState> get copyWith =>
      __$AddSaleStateCopyWithImpl<_AddSaleState>(this, _$identity);
}

abstract class _AddSaleState implements AddSaleState {
  const factory _AddSaleState(
      {Either<CardAmountFailure, CardAmount> totalAmount,
      Either<CashAmountFailure, CashAmount> paidAmount,
      Option<Failure> saleTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) = _$_AddSaleState;

  @override
  Either<CardAmountFailure, CardAmount> get totalAmount;
  @override
  Either<CashAmountFailure, CashAmount> get paidAmount;
  @override
  Option<Failure> get saleTransactionFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get hasRequested;
  @override
  bool get requestCompleted;
  @override
  @JsonKey(ignore: true)
  _$AddSaleStateCopyWith<_AddSaleState> get copyWith;
}
