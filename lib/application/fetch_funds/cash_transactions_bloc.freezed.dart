// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cash_transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CashTransactionsStateTearOff {
  const _$CashTransactionsStateTearOff();

// ignore: unused_element
  _CashTransactionsState call(
      {bool isLoading,
      Option<Failure> fetchingFundsFailure,
      List<CashTransaction> funds}) {
    return _CashTransactionsState(
      isLoading: isLoading,
      fetchingFundsFailure: fetchingFundsFailure,
      funds: funds,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CashTransactionsState = _$CashTransactionsStateTearOff();

/// @nodoc
mixin _$CashTransactionsState {
  bool get isLoading;
  Option<Failure> get fetchingFundsFailure;
  List<CashTransaction> get funds;

  @JsonKey(ignore: true)
  $CashTransactionsStateCopyWith<CashTransactionsState> get copyWith;
}

/// @nodoc
abstract class $CashTransactionsStateCopyWith<$Res> {
  factory $CashTransactionsStateCopyWith(CashTransactionsState value,
          $Res Function(CashTransactionsState) then) =
      _$CashTransactionsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Failure> fetchingFundsFailure,
      List<CashTransaction> funds});
}

/// @nodoc
class _$CashTransactionsStateCopyWithImpl<$Res>
    implements $CashTransactionsStateCopyWith<$Res> {
  _$CashTransactionsStateCopyWithImpl(this._value, this._then);

  final CashTransactionsState _value;
  // ignore: unused_field
  final $Res Function(CashTransactionsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object fetchingFundsFailure = freezed,
    Object funds = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      fetchingFundsFailure: fetchingFundsFailure == freezed
          ? _value.fetchingFundsFailure
          : fetchingFundsFailure as Option<Failure>,
      funds: funds == freezed ? _value.funds : funds as List<CashTransaction>,
    ));
  }
}

/// @nodoc
abstract class _$CashTransactionsStateCopyWith<$Res>
    implements $CashTransactionsStateCopyWith<$Res> {
  factory _$CashTransactionsStateCopyWith(_CashTransactionsState value,
          $Res Function(_CashTransactionsState) then) =
      __$CashTransactionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Failure> fetchingFundsFailure,
      List<CashTransaction> funds});
}

/// @nodoc
class __$CashTransactionsStateCopyWithImpl<$Res>
    extends _$CashTransactionsStateCopyWithImpl<$Res>
    implements _$CashTransactionsStateCopyWith<$Res> {
  __$CashTransactionsStateCopyWithImpl(_CashTransactionsState _value,
      $Res Function(_CashTransactionsState) _then)
      : super(_value, (v) => _then(v as _CashTransactionsState));

  @override
  _CashTransactionsState get _value => super._value as _CashTransactionsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object fetchingFundsFailure = freezed,
    Object funds = freezed,
  }) {
    return _then(_CashTransactionsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      fetchingFundsFailure: fetchingFundsFailure == freezed
          ? _value.fetchingFundsFailure
          : fetchingFundsFailure as Option<Failure>,
      funds: funds == freezed ? _value.funds : funds as List<CashTransaction>,
    ));
  }
}

/// @nodoc
class _$_CashTransactionsState implements _CashTransactionsState {
  const _$_CashTransactionsState(
      {this.isLoading, this.fetchingFundsFailure, this.funds});

  @override
  final bool isLoading;
  @override
  final Option<Failure> fetchingFundsFailure;
  @override
  final List<CashTransaction> funds;

  @override
  String toString() {
    return 'CashTransactionsState(isLoading: $isLoading, fetchingFundsFailure: $fetchingFundsFailure, funds: $funds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CashTransactionsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.fetchingFundsFailure, fetchingFundsFailure) ||
                const DeepCollectionEquality().equals(
                    other.fetchingFundsFailure, fetchingFundsFailure)) &&
            (identical(other.funds, funds) ||
                const DeepCollectionEquality().equals(other.funds, funds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(fetchingFundsFailure) ^
      const DeepCollectionEquality().hash(funds);

  @JsonKey(ignore: true)
  @override
  _$CashTransactionsStateCopyWith<_CashTransactionsState> get copyWith =>
      __$CashTransactionsStateCopyWithImpl<_CashTransactionsState>(
          this, _$identity);
}

abstract class _CashTransactionsState implements CashTransactionsState {
  const factory _CashTransactionsState(
      {bool isLoading,
      Option<Failure> fetchingFundsFailure,
      List<CashTransaction> funds}) = _$_CashTransactionsState;

  @override
  bool get isLoading;
  @override
  Option<Failure> get fetchingFundsFailure;
  @override
  List<CashTransaction> get funds;
  @override
  @JsonKey(ignore: true)
  _$CashTransactionsStateCopyWith<_CashTransactionsState> get copyWith;
}
