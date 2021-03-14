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
      Option<Failure> myShopsLoadingFailure,
      List<Shop> shops,
      String searchWith}) {
    return _MyShopsState(
      isLoading: isLoading,
      myShopsLoadingFailure: myShopsLoadingFailure,
      shops: shops,
      searchWith: searchWith,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MyShopsState = _$MyShopsStateTearOff();

/// @nodoc
mixin _$MyShopsState {
  bool get isLoading;
  Option<Failure> get myShopsLoadingFailure;
  List<Shop> get shops;
  String get searchWith;

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
      Option<Failure> myShopsLoadingFailure,
      List<Shop> shops,
      String searchWith});
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
    Object myShopsLoadingFailure = freezed,
    Object shops = freezed,
    Object searchWith = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      myShopsLoadingFailure: myShopsLoadingFailure == freezed
          ? _value.myShopsLoadingFailure
          : myShopsLoadingFailure as Option<Failure>,
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
      searchWith:
          searchWith == freezed ? _value.searchWith : searchWith as String,
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
      Option<Failure> myShopsLoadingFailure,
      List<Shop> shops,
      String searchWith});
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
    Object myShopsLoadingFailure = freezed,
    Object shops = freezed,
    Object searchWith = freezed,
  }) {
    return _then(_MyShopsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      myShopsLoadingFailure: myShopsLoadingFailure == freezed
          ? _value.myShopsLoadingFailure
          : myShopsLoadingFailure as Option<Failure>,
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
      searchWith:
          searchWith == freezed ? _value.searchWith : searchWith as String,
    ));
  }
}

/// @nodoc
class _$_MyShopsState implements _MyShopsState {
  const _$_MyShopsState(
      {this.isLoading,
      this.myShopsLoadingFailure,
      this.shops,
      this.searchWith});

  @override
  final bool isLoading;
  @override
  final Option<Failure> myShopsLoadingFailure;
  @override
  final List<Shop> shops;
  @override
  final String searchWith;

  @override
  String toString() {
    return 'MyShopsState(isLoading: $isLoading, myShopsLoadingFailure: $myShopsLoadingFailure, shops: $shops, searchWith: $searchWith)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyShopsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.myShopsLoadingFailure, myShopsLoadingFailure) ||
                const DeepCollectionEquality().equals(
                    other.myShopsLoadingFailure, myShopsLoadingFailure)) &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)) &&
            (identical(other.searchWith, searchWith) ||
                const DeepCollectionEquality()
                    .equals(other.searchWith, searchWith)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(myShopsLoadingFailure) ^
      const DeepCollectionEquality().hash(shops) ^
      const DeepCollectionEquality().hash(searchWith);

  @JsonKey(ignore: true)
  @override
  _$MyShopsStateCopyWith<_MyShopsState> get copyWith =>
      __$MyShopsStateCopyWithImpl<_MyShopsState>(this, _$identity);
}

abstract class _MyShopsState implements MyShopsState {
  const factory _MyShopsState(
      {bool isLoading,
      Option<Failure> myShopsLoadingFailure,
      List<Shop> shops,
      String searchWith}) = _$_MyShopsState;

  @override
  bool get isLoading;
  @override
  Option<Failure> get myShopsLoadingFailure;
  @override
  List<Shop> get shops;
  @override
  String get searchWith;
  @override
  @JsonKey(ignore: true)
  _$MyShopsStateCopyWith<_MyShopsState> get copyWith;
}
