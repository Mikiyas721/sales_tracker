// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sale_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SaleTransactionStateTearOff {
  const _$SaleTransactionStateTearOff();

// ignore: unused_element
  _SaleTransactionState call(
      {Either<CardAmountFailure, CardAmount> totalAmount,
      Either<CashAmountFailure, CashAmount> paidAmount,
      Failure saleTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) {
    return _SaleTransactionState(
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
const $SaleTransactionState = _$SaleTransactionStateTearOff();

/// @nodoc
mixin _$SaleTransactionState {
  Either<CardAmountFailure, CardAmount> get totalAmount;
  Either<CashAmountFailure, CashAmount> get paidAmount;
  Failure get saleTransactionFailure;
  bool get hasSubmitted;
  bool get hasRequested;
  bool get requestCompleted;

  @JsonKey(ignore: true)
  $SaleTransactionStateCopyWith<SaleTransactionState> get copyWith;
}

/// @nodoc
abstract class $SaleTransactionStateCopyWith<$Res> {
  factory $SaleTransactionStateCopyWith(SaleTransactionState value,
          $Res Function(SaleTransactionState) then) =
      _$SaleTransactionStateCopyWithImpl<$Res>;
  $Res call(
      {Either<CardAmountFailure, CardAmount> totalAmount,
      Either<CashAmountFailure, CashAmount> paidAmount,
      Failure saleTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class _$SaleTransactionStateCopyWithImpl<$Res>
    implements $SaleTransactionStateCopyWith<$Res> {
  _$SaleTransactionStateCopyWithImpl(this._value, this._then);

  final SaleTransactionState _value;
  // ignore: unused_field
  final $Res Function(SaleTransactionState) _then;

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
          : saleTransactionFailure as Failure,
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
abstract class _$SaleTransactionStateCopyWith<$Res>
    implements $SaleTransactionStateCopyWith<$Res> {
  factory _$SaleTransactionStateCopyWith(_SaleTransactionState value,
          $Res Function(_SaleTransactionState) then) =
      __$SaleTransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<CardAmountFailure, CardAmount> totalAmount,
      Either<CashAmountFailure, CashAmount> paidAmount,
      Failure saleTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class __$SaleTransactionStateCopyWithImpl<$Res>
    extends _$SaleTransactionStateCopyWithImpl<$Res>
    implements _$SaleTransactionStateCopyWith<$Res> {
  __$SaleTransactionStateCopyWithImpl(
      _SaleTransactionState _value, $Res Function(_SaleTransactionState) _then)
      : super(_value, (v) => _then(v as _SaleTransactionState));

  @override
  _SaleTransactionState get _value => super._value as _SaleTransactionState;

  @override
  $Res call({
    Object totalAmount = freezed,
    Object paidAmount = freezed,
    Object saleTransactionFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object requestCompleted = freezed,
  }) {
    return _then(_SaleTransactionState(
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount as Either<CardAmountFailure, CardAmount>,
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount as Either<CashAmountFailure, CashAmount>,
      saleTransactionFailure: saleTransactionFailure == freezed
          ? _value.saleTransactionFailure
          : saleTransactionFailure as Failure,
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
class _$_SaleTransactionState implements _SaleTransactionState {
  const _$_SaleTransactionState(
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
  final Failure saleTransactionFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool hasRequested;
  @override
  final bool requestCompleted;

  @override
  String toString() {
    return 'SaleTransactionState(totalAmount: $totalAmount, paidAmount: $paidAmount, saleTransactionFailure: $saleTransactionFailure, hasSubmitted: $hasSubmitted, hasRequested: $hasRequested, requestCompleted: $requestCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaleTransactionState &&
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
  _$SaleTransactionStateCopyWith<_SaleTransactionState> get copyWith =>
      __$SaleTransactionStateCopyWithImpl<_SaleTransactionState>(
          this, _$identity);
}

abstract class _SaleTransactionState implements SaleTransactionState {
  const factory _SaleTransactionState(
      {Either<CardAmountFailure, CardAmount> totalAmount,
      Either<CashAmountFailure, CashAmount> paidAmount,
      Failure saleTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) = _$_SaleTransactionState;

  @override
  Either<CardAmountFailure, CardAmount> get totalAmount;
  @override
  Either<CashAmountFailure, CashAmount> get paidAmount;
  @override
  Failure get saleTransactionFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get hasRequested;
  @override
  bool get requestCompleted;
  @override
  @JsonKey(ignore: true)
  _$SaleTransactionStateCopyWith<_SaleTransactionState> get copyWith;
}
