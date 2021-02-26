// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fund_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FundTransactionStateTearOff {
  const _$FundTransactionStateTearOff();

// ignore: unused_element
  _FundTransactionState call(
      {Either<CashAmountFailure, CashAmount> paidAmount,
      Failure fundTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) {
    return _FundTransactionState(
      paidAmount: paidAmount,
      fundTransactionFailure: fundTransactionFailure,
      hasSubmitted: hasSubmitted,
      hasRequested: hasRequested,
      requestCompleted: requestCompleted,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FundTransactionState = _$FundTransactionStateTearOff();

/// @nodoc
mixin _$FundTransactionState {
  Either<CashAmountFailure, CashAmount> get paidAmount;
  Failure get fundTransactionFailure;
  bool get hasSubmitted;
  bool get hasRequested;
  bool get requestCompleted;

  @JsonKey(ignore: true)
  $FundTransactionStateCopyWith<FundTransactionState> get copyWith;
}

/// @nodoc
abstract class $FundTransactionStateCopyWith<$Res> {
  factory $FundTransactionStateCopyWith(FundTransactionState value,
          $Res Function(FundTransactionState) then) =
      _$FundTransactionStateCopyWithImpl<$Res>;
  $Res call(
      {Either<CashAmountFailure, CashAmount> paidAmount,
      Failure fundTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class _$FundTransactionStateCopyWithImpl<$Res>
    implements $FundTransactionStateCopyWith<$Res> {
  _$FundTransactionStateCopyWithImpl(this._value, this._then);

  final FundTransactionState _value;
  // ignore: unused_field
  final $Res Function(FundTransactionState) _then;

  @override
  $Res call({
    Object paidAmount = freezed,
    Object fundTransactionFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object requestCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount as Either<CashAmountFailure, CashAmount>,
      fundTransactionFailure: fundTransactionFailure == freezed
          ? _value.fundTransactionFailure
          : fundTransactionFailure as Failure,
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
abstract class _$FundTransactionStateCopyWith<$Res>
    implements $FundTransactionStateCopyWith<$Res> {
  factory _$FundTransactionStateCopyWith(_FundTransactionState value,
          $Res Function(_FundTransactionState) then) =
      __$FundTransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<CashAmountFailure, CashAmount> paidAmount,
      Failure fundTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class __$FundTransactionStateCopyWithImpl<$Res>
    extends _$FundTransactionStateCopyWithImpl<$Res>
    implements _$FundTransactionStateCopyWith<$Res> {
  __$FundTransactionStateCopyWithImpl(
      _FundTransactionState _value, $Res Function(_FundTransactionState) _then)
      : super(_value, (v) => _then(v as _FundTransactionState));

  @override
  _FundTransactionState get _value => super._value as _FundTransactionState;

  @override
  $Res call({
    Object paidAmount = freezed,
    Object fundTransactionFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object requestCompleted = freezed,
  }) {
    return _then(_FundTransactionState(
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount as Either<CashAmountFailure, CashAmount>,
      fundTransactionFailure: fundTransactionFailure == freezed
          ? _value.fundTransactionFailure
          : fundTransactionFailure as Failure,
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
class _$_FundTransactionState implements _FundTransactionState {
  const _$_FundTransactionState(
      {this.paidAmount,
      this.fundTransactionFailure,
      this.hasSubmitted,
      this.hasRequested,
      this.requestCompleted});

  @override
  final Either<CashAmountFailure, CashAmount> paidAmount;
  @override
  final Failure fundTransactionFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool hasRequested;
  @override
  final bool requestCompleted;

  @override
  String toString() {
    return 'FundTransactionState(paidAmount: $paidAmount, fundTransactionFailure: $fundTransactionFailure, hasSubmitted: $hasSubmitted, hasRequested: $hasRequested, requestCompleted: $requestCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FundTransactionState &&
            (identical(other.paidAmount, paidAmount) ||
                const DeepCollectionEquality()
                    .equals(other.paidAmount, paidAmount)) &&
            (identical(other.fundTransactionFailure, fundTransactionFailure) ||
                const DeepCollectionEquality().equals(
                    other.fundTransactionFailure, fundTransactionFailure)) &&
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
      const DeepCollectionEquality().hash(paidAmount) ^
      const DeepCollectionEquality().hash(fundTransactionFailure) ^
      const DeepCollectionEquality().hash(hasSubmitted) ^
      const DeepCollectionEquality().hash(hasRequested) ^
      const DeepCollectionEquality().hash(requestCompleted);

  @JsonKey(ignore: true)
  @override
  _$FundTransactionStateCopyWith<_FundTransactionState> get copyWith =>
      __$FundTransactionStateCopyWithImpl<_FundTransactionState>(
          this, _$identity);
}

abstract class _FundTransactionState implements FundTransactionState {
  const factory _FundTransactionState(
      {Either<CashAmountFailure, CashAmount> paidAmount,
      Failure fundTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) = _$_FundTransactionState;

  @override
  Either<CashAmountFailure, CashAmount> get paidAmount;
  @override
  Failure get fundTransactionFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get hasRequested;
  @override
  bool get requestCompleted;
  @override
  @JsonKey(ignore: true)
  _$FundTransactionStateCopyWith<_FundTransactionState> get copyWith;
}
