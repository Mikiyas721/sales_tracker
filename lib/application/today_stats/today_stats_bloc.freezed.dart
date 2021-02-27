// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'today_stats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodayStatsStateTearOff {
  const _$TodayStatsStateTearOff();

// ignore: unused_element
  _TodayStatsState call({double soldAmount, double remainingLoan}) {
    return _TodayStatsState(
      soldAmount: soldAmount,
      remainingLoan: remainingLoan,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodayStatsState = _$TodayStatsStateTearOff();

/// @nodoc
mixin _$TodayStatsState {
  double get soldAmount;
  double get remainingLoan;

  @JsonKey(ignore: true)
  $TodayStatsStateCopyWith<TodayStatsState> get copyWith;
}

/// @nodoc
abstract class $TodayStatsStateCopyWith<$Res> {
  factory $TodayStatsStateCopyWith(
          TodayStatsState value, $Res Function(TodayStatsState) then) =
      _$TodayStatsStateCopyWithImpl<$Res>;
  $Res call({double soldAmount, double remainingLoan});
}

/// @nodoc
class _$TodayStatsStateCopyWithImpl<$Res>
    implements $TodayStatsStateCopyWith<$Res> {
  _$TodayStatsStateCopyWithImpl(this._value, this._then);

  final TodayStatsState _value;
  // ignore: unused_field
  final $Res Function(TodayStatsState) _then;

  @override
  $Res call({
    Object soldAmount = freezed,
    Object remainingLoan = freezed,
  }) {
    return _then(_value.copyWith(
      soldAmount:
          soldAmount == freezed ? _value.soldAmount : soldAmount as double,
      remainingLoan: remainingLoan == freezed
          ? _value.remainingLoan
          : remainingLoan as double,
    ));
  }
}

/// @nodoc
abstract class _$TodayStatsStateCopyWith<$Res>
    implements $TodayStatsStateCopyWith<$Res> {
  factory _$TodayStatsStateCopyWith(
          _TodayStatsState value, $Res Function(_TodayStatsState) then) =
      __$TodayStatsStateCopyWithImpl<$Res>;
  @override
  $Res call({double soldAmount, double remainingLoan});
}

/// @nodoc
class __$TodayStatsStateCopyWithImpl<$Res>
    extends _$TodayStatsStateCopyWithImpl<$Res>
    implements _$TodayStatsStateCopyWith<$Res> {
  __$TodayStatsStateCopyWithImpl(
      _TodayStatsState _value, $Res Function(_TodayStatsState) _then)
      : super(_value, (v) => _then(v as _TodayStatsState));

  @override
  _TodayStatsState get _value => super._value as _TodayStatsState;

  @override
  $Res call({
    Object soldAmount = freezed,
    Object remainingLoan = freezed,
  }) {
    return _then(_TodayStatsState(
      soldAmount:
          soldAmount == freezed ? _value.soldAmount : soldAmount as double,
      remainingLoan: remainingLoan == freezed
          ? _value.remainingLoan
          : remainingLoan as double,
    ));
  }
}

/// @nodoc
class _$_TodayStatsState implements _TodayStatsState {
  const _$_TodayStatsState({this.soldAmount, this.remainingLoan});

  @override
  final double soldAmount;
  @override
  final double remainingLoan;

  @override
  String toString() {
    return 'TodayStatsState(soldAmount: $soldAmount, remainingLoan: $remainingLoan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodayStatsState &&
            (identical(other.soldAmount, soldAmount) ||
                const DeepCollectionEquality()
                    .equals(other.soldAmount, soldAmount)) &&
            (identical(other.remainingLoan, remainingLoan) ||
                const DeepCollectionEquality()
                    .equals(other.remainingLoan, remainingLoan)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(soldAmount) ^
      const DeepCollectionEquality().hash(remainingLoan);

  @JsonKey(ignore: true)
  @override
  _$TodayStatsStateCopyWith<_TodayStatsState> get copyWith =>
      __$TodayStatsStateCopyWithImpl<_TodayStatsState>(this, _$identity);
}

abstract class _TodayStatsState implements TodayStatsState {
  const factory _TodayStatsState({double soldAmount, double remainingLoan}) =
      _$_TodayStatsState;

  @override
  double get soldAmount;
  @override
  double get remainingLoan;
  @override
  @JsonKey(ignore: true)
  _$TodayStatsStateCopyWith<_TodayStatsState> get copyWith;
}
