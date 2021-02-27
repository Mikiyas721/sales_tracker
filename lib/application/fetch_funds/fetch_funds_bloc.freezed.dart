// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_funds_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchFundsStateTearOff {
  const _$FetchFundsStateTearOff();

// ignore: unused_element
  _FetchFundsState call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingFundsFailure,
      List<FundTransaction> funds}) {
    return _FetchFundsState(
      isLoading: isLoading,
      hasLoaded: hasLoaded,
      fetchingFundsFailure: fetchingFundsFailure,
      funds: funds,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchFundsState = _$FetchFundsStateTearOff();

/// @nodoc
mixin _$FetchFundsState {
  bool get isLoading;
  bool get hasLoaded;
  Failure get fetchingFundsFailure;
  List<FundTransaction> get funds;

  @JsonKey(ignore: true)
  $FetchFundsStateCopyWith<FetchFundsState> get copyWith;
}

/// @nodoc
abstract class $FetchFundsStateCopyWith<$Res> {
  factory $FetchFundsStateCopyWith(
          FetchFundsState value, $Res Function(FetchFundsState) then) =
      _$FetchFundsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingFundsFailure,
      List<FundTransaction> funds});
}

/// @nodoc
class _$FetchFundsStateCopyWithImpl<$Res>
    implements $FetchFundsStateCopyWith<$Res> {
  _$FetchFundsStateCopyWithImpl(this._value, this._then);

  final FetchFundsState _value;
  // ignore: unused_field
  final $Res Function(FetchFundsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object fetchingFundsFailure = freezed,
    Object funds = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      fetchingFundsFailure: fetchingFundsFailure == freezed
          ? _value.fetchingFundsFailure
          : fetchingFundsFailure as Failure,
      funds: funds == freezed ? _value.funds : funds as List<FundTransaction>,
    ));
  }
}

/// @nodoc
abstract class _$FetchFundsStateCopyWith<$Res>
    implements $FetchFundsStateCopyWith<$Res> {
  factory _$FetchFundsStateCopyWith(
          _FetchFundsState value, $Res Function(_FetchFundsState) then) =
      __$FetchFundsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingFundsFailure,
      List<FundTransaction> funds});
}

/// @nodoc
class __$FetchFundsStateCopyWithImpl<$Res>
    extends _$FetchFundsStateCopyWithImpl<$Res>
    implements _$FetchFundsStateCopyWith<$Res> {
  __$FetchFundsStateCopyWithImpl(
      _FetchFundsState _value, $Res Function(_FetchFundsState) _then)
      : super(_value, (v) => _then(v as _FetchFundsState));

  @override
  _FetchFundsState get _value => super._value as _FetchFundsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object fetchingFundsFailure = freezed,
    Object funds = freezed,
  }) {
    return _then(_FetchFundsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      fetchingFundsFailure: fetchingFundsFailure == freezed
          ? _value.fetchingFundsFailure
          : fetchingFundsFailure as Failure,
      funds: funds == freezed ? _value.funds : funds as List<FundTransaction>,
    ));
  }
}

/// @nodoc
class _$_FetchFundsState implements _FetchFundsState {
  const _$_FetchFundsState(
      {this.isLoading, this.hasLoaded, this.fetchingFundsFailure, this.funds});

  @override
  final bool isLoading;
  @override
  final bool hasLoaded;
  @override
  final Failure fetchingFundsFailure;
  @override
  final List<FundTransaction> funds;

  @override
  String toString() {
    return 'FetchFundsState(isLoading: $isLoading, hasLoaded: $hasLoaded, fetchingFundsFailure: $fetchingFundsFailure, funds: $funds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchFundsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasLoaded, hasLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.hasLoaded, hasLoaded)) &&
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
      const DeepCollectionEquality().hash(hasLoaded) ^
      const DeepCollectionEquality().hash(fetchingFundsFailure) ^
      const DeepCollectionEquality().hash(funds);

  @JsonKey(ignore: true)
  @override
  _$FetchFundsStateCopyWith<_FetchFundsState> get copyWith =>
      __$FetchFundsStateCopyWithImpl<_FetchFundsState>(this, _$identity);
}

abstract class _FetchFundsState implements FetchFundsState {
  const factory _FetchFundsState(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingFundsFailure,
      List<FundTransaction> funds}) = _$_FetchFundsState;

  @override
  bool get isLoading;
  @override
  bool get hasLoaded;
  @override
  Failure get fetchingFundsFailure;
  @override
  List<FundTransaction> get funds;
  @override
  @JsonKey(ignore: true)
  _$FetchFundsStateCopyWith<_FetchFundsState> get copyWith;
}
