// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'my_shops_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MyShopsStateTearOff {
  const _$MyShopsStateTearOff();

// ignore: unused_element
  _MyShopsState call(
      {bool isLoading,
      bool hasLoaded,
      Failure myShopsLoadingFailure,
      List<Shop> shops}) {
    return _MyShopsState(
      isLoading: isLoading,
      hasLoaded: hasLoaded,
      myShopsLoadingFailure: myShopsLoadingFailure,
      shops: shops,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MyShopsState = _$MyShopsStateTearOff();

/// @nodoc
mixin _$MyShopsState {
  bool get isLoading;
  bool get hasLoaded;
  Failure get myShopsLoadingFailure;
  List<Shop> get shops;

  @JsonKey(ignore: true)
  $MyShopsStateCopyWith<MyShopsState> get copyWith;
}

/// @nodoc
abstract class $MyShopsStateCopyWith<$Res> {
  factory $MyShopsStateCopyWith(
          MyShopsState value, $Res Function(MyShopsState) then) =
      _$MyShopsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure myShopsLoadingFailure,
      List<Shop> shops});
}

/// @nodoc
class _$MyShopsStateCopyWithImpl<$Res> implements $MyShopsStateCopyWith<$Res> {
  _$MyShopsStateCopyWithImpl(this._value, this._then);

  final MyShopsState _value;
  // ignore: unused_field
  final $Res Function(MyShopsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object myShopsLoadingFailure = freezed,
    Object shops = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      myShopsLoadingFailure: myShopsLoadingFailure == freezed
          ? _value.myShopsLoadingFailure
          : myShopsLoadingFailure as Failure,
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
    ));
  }
}

/// @nodoc
abstract class _$MyShopsStateCopyWith<$Res>
    implements $MyShopsStateCopyWith<$Res> {
  factory _$MyShopsStateCopyWith(
          _MyShopsState value, $Res Function(_MyShopsState) then) =
      __$MyShopsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure myShopsLoadingFailure,
      List<Shop> shops});
}

/// @nodoc
class __$MyShopsStateCopyWithImpl<$Res> extends _$MyShopsStateCopyWithImpl<$Res>
    implements _$MyShopsStateCopyWith<$Res> {
  __$MyShopsStateCopyWithImpl(
      _MyShopsState _value, $Res Function(_MyShopsState) _then)
      : super(_value, (v) => _then(v as _MyShopsState));

  @override
  _MyShopsState get _value => super._value as _MyShopsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object myShopsLoadingFailure = freezed,
    Object shops = freezed,
  }) {
    return _then(_MyShopsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      myShopsLoadingFailure: myShopsLoadingFailure == freezed
          ? _value.myShopsLoadingFailure
          : myShopsLoadingFailure as Failure,
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
    ));
  }
}

/// @nodoc
class _$_MyShopsState implements _MyShopsState {
  const _$_MyShopsState(
      {this.isLoading, this.hasLoaded, this.myShopsLoadingFailure, this.shops});

  @override
  final bool isLoading;
  @override
  final bool hasLoaded;
  @override
  final Failure myShopsLoadingFailure;
  @override
  final List<Shop> shops;

  @override
  String toString() {
    return 'MyShopsState(isLoading: $isLoading, hasLoaded: $hasLoaded, myShopsLoadingFailure: $myShopsLoadingFailure, shops: $shops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyShopsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasLoaded, hasLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.hasLoaded, hasLoaded)) &&
            (identical(other.myShopsLoadingFailure, myShopsLoadingFailure) ||
                const DeepCollectionEquality().equals(
                    other.myShopsLoadingFailure, myShopsLoadingFailure)) &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasLoaded) ^
      const DeepCollectionEquality().hash(myShopsLoadingFailure) ^
      const DeepCollectionEquality().hash(shops);

  @JsonKey(ignore: true)
  @override
  _$MyShopsStateCopyWith<_MyShopsState> get copyWith =>
      __$MyShopsStateCopyWithImpl<_MyShopsState>(this, _$identity);
}

abstract class _MyShopsState implements MyShopsState {
  const factory _MyShopsState(
      {bool isLoading,
      bool hasLoaded,
      Failure myShopsLoadingFailure,
      List<Shop> shops}) = _$_MyShopsState;

  @override
  bool get isLoading;
  @override
  bool get hasLoaded;
  @override
  Failure get myShopsLoadingFailure;
  @override
  List<Shop> get shops;
  @override
  @JsonKey(ignore: true)
  _$MyShopsStateCopyWith<_MyShopsState> get copyWith;
}
