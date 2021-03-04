// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_fund_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddFundStateTearOff {
  const _$AddFundStateTearOff();

// ignore: unused_element
  _AddFundState call(
      {Either<CashAmountFailure, CashAmount> paidAmount,
      Option<Failure> fundTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) {
    return _AddFundState(
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
const $AddFundState = _$AddFundStateTearOff();

/// @nodoc
mixin _$AddFundState {
  Either<CashAmountFailure, CashAmount> get paidAmount;
  Option<Failure> get fundTransactionFailure;
  bool get hasSubmitted;
  bool get hasRequested;
  bool get requestCompleted;

  @JsonKey(ignore: true)
  $AddFundStateCopyWith<AddFundState> get copyWith;
}

/// @nodoc
abstract class $AddFundStateCopyWith<$Res> {
  factory $AddFundStateCopyWith(
          AddFundState value, $Res Function(AddFundState) then) =
      _$AddFundStateCopyWithImpl<$Res>;
  $Res call(
      {Either<CashAmountFailure, CashAmount> paidAmount,
      Option<Failure> fundTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class _$AddFundStateCopyWithImpl<$Res> implements $AddFundStateCopyWith<$Res> {
  _$AddFundStateCopyWithImpl(this._value, this._then);

  final AddFundState _value;
  // ignore: unused_field
  final $Res Function(AddFundState) _then;

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
          : fundTransactionFailure as Option<Failure>,
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
abstract class _$AddFundStateCopyWith<$Res>
    implements $AddFundStateCopyWith<$Res> {
  factory _$AddFundStateCopyWith(
          _AddFundState value, $Res Function(_AddFundState) then) =
      __$AddFundStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<CashAmountFailure, CashAmount> paidAmount,
      Option<Failure> fundTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class __$AddFundStateCopyWithImpl<$Res> extends _$AddFundStateCopyWithImpl<$Res>
    implements _$AddFundStateCopyWith<$Res> {
  __$AddFundStateCopyWithImpl(
      _AddFundState _value, $Res Function(_AddFundState) _then)
      : super(_value, (v) => _then(v as _AddFundState));

  @override
  _AddFundState get _value => super._value as _AddFundState;

  @override
  $Res call({
    Object paidAmount = freezed,
    Object fundTransactionFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object requestCompleted = freezed,
  }) {
    return _then(_AddFundState(
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount as Either<CashAmountFailure, CashAmount>,
      fundTransactionFailure: fundTransactionFailure == freezed
          ? _value.fundTransactionFailure
          : fundTransactionFailure as Option<Failure>,
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
class _$_AddFundState implements _AddFundState {
  const _$_AddFundState(
      {this.paidAmount,
      this.fundTransactionFailure,
      this.hasSubmitted,
      this.hasRequested,
      this.requestCompleted});

  @override
  final Either<CashAmountFailure, CashAmount> paidAmount;
  @override
  final Option<Failure> fundTransactionFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool hasRequested;
  @override
  final bool requestCompleted;

  @override
  String toString() {
    return 'AddFundState(paidAmount: $paidAmount, fundTransactionFailure: $fundTransactionFailure, hasSubmitted: $hasSubmitted, hasRequested: $hasRequested, requestCompleted: $requestCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFundState &&
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
  _$AddFundStateCopyWith<_AddFundState> get copyWith =>
      __$AddFundStateCopyWithImpl<_AddFundState>(this, _$identity);
}

abstract class _AddFundState implements AddFundState {
  const factory _AddFundState(
      {Either<CashAmountFailure, CashAmount> paidAmount,
      Option<Failure> fundTransactionFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) = _$_AddFundState;

  @override
  Either<CashAmountFailure, CashAmount> get paidAmount;
  @override
  Option<Failure> get fundTransactionFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get hasRequested;
  @override
  bool get requestCompleted;
  @override
  @JsonKey(ignore: true)
  _$AddFundStateCopyWith<_AddFundState> get copyWith;
}
