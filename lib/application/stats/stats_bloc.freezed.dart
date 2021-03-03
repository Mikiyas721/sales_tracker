// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatsStateTearOff {
  const _$StatsStateTearOff();

// ignore: unused_element
  _StatsState call(
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      Failure loadingFailure,
      int activeButtonIndex,
      bool isLoading}) {
    return _StatsState(
      cards: cards,
      cash: cash,
      loadingFailure: loadingFailure,
      activeButtonIndex: activeButtonIndex,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StatsState = _$StatsStateTearOff();

/// @nodoc
mixin _$StatsState {
  List<CardTransaction> get cards;
  List<CashTransaction> get cash;
  Failure get loadingFailure;
  int get activeButtonIndex;
  bool get isLoading;

  @JsonKey(ignore: true)
  $StatsStateCopyWith<StatsState> get copyWith;
}

/// @nodoc
abstract class $StatsStateCopyWith<$Res> {
  factory $StatsStateCopyWith(
          StatsState value, $Res Function(StatsState) then) =
      _$StatsStateCopyWithImpl<$Res>;
  $Res call(
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      Failure loadingFailure,
      int activeButtonIndex,
      bool isLoading});
}

/// @nodoc
class _$StatsStateCopyWithImpl<$Res> implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._value, this._then);

  final StatsState _value;
  // ignore: unused_field
  final $Res Function(StatsState) _then;

  @override
  $Res call({
    Object cards = freezed,
    Object cash = freezed,
    Object loadingFailure = freezed,
    Object activeButtonIndex = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed ? _value.cards : cards as List<CardTransaction>,
      cash: cash == freezed ? _value.cash : cash as List<CashTransaction>,
      loadingFailure: loadingFailure == freezed
          ? _value.loadingFailure
          : loadingFailure as Failure,
      activeButtonIndex: activeButtonIndex == freezed
          ? _value.activeButtonIndex
          : activeButtonIndex as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$StatsStateCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$StatsStateCopyWith(
          _StatsState value, $Res Function(_StatsState) then) =
      __$StatsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      Failure loadingFailure,
      int activeButtonIndex,
      bool isLoading});
}

/// @nodoc
class __$StatsStateCopyWithImpl<$Res> extends _$StatsStateCopyWithImpl<$Res>
    implements _$StatsStateCopyWith<$Res> {
  __$StatsStateCopyWithImpl(
      _StatsState _value, $Res Function(_StatsState) _then)
      : super(_value, (v) => _then(v as _StatsState));

  @override
  _StatsState get _value => super._value as _StatsState;

  @override
  $Res call({
    Object cards = freezed,
    Object cash = freezed,
    Object loadingFailure = freezed,
    Object activeButtonIndex = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_StatsState(
      cards: cards == freezed ? _value.cards : cards as List<CardTransaction>,
      cash: cash == freezed ? _value.cash : cash as List<CashTransaction>,
      loadingFailure: loadingFailure == freezed
          ? _value.loadingFailure
          : loadingFailure as Failure,
      activeButtonIndex: activeButtonIndex == freezed
          ? _value.activeButtonIndex
          : activeButtonIndex as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_StatsState implements _StatsState {
  const _$_StatsState(
      {this.cards,
      this.cash,
      this.loadingFailure,
      this.activeButtonIndex,
      this.isLoading});

  @override
  final List<CardTransaction> cards;
  @override
  final List<CashTransaction> cash;
  @override
  final Failure loadingFailure;
  @override
  final int activeButtonIndex;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'StatsState(cards: $cards, cash: $cash, loadingFailure: $loadingFailure, activeButtonIndex: $activeButtonIndex, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatsState &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.cash, cash) ||
                const DeepCollectionEquality().equals(other.cash, cash)) &&
            (identical(other.loadingFailure, loadingFailure) ||
                const DeepCollectionEquality()
                    .equals(other.loadingFailure, loadingFailure)) &&
            (identical(other.activeButtonIndex, activeButtonIndex) ||
                const DeepCollectionEquality()
                    .equals(other.activeButtonIndex, activeButtonIndex)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(cash) ^
      const DeepCollectionEquality().hash(loadingFailure) ^
      const DeepCollectionEquality().hash(activeButtonIndex) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$StatsStateCopyWith<_StatsState> get copyWith =>
      __$StatsStateCopyWithImpl<_StatsState>(this, _$identity);
}

abstract class _StatsState implements StatsState {
  const factory _StatsState(
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      Failure loadingFailure,
      int activeButtonIndex,
      bool isLoading}) = _$_StatsState;

  @override
  List<CardTransaction> get cards;
  @override
  List<CashTransaction> get cash;
  @override
  Failure get loadingFailure;
  @override
  int get activeButtonIndex;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$StatsStateCopyWith<_StatsState> get copyWith;
}
