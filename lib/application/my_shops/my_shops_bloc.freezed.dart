// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'my_shops_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MyShopsEventTearOff {
  const _$MyShopsEventTearOff();

// ignore: unused_element
  Load load(bool load) {
    return Load(
      load,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MyShopsEvent = _$MyShopsEventTearOff();

/// @nodoc
mixin _$MyShopsEvent {
  bool get load;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult load(bool load),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult load(bool load),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult load(Load value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult load(Load value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $MyShopsEventCopyWith<MyShopsEvent> get copyWith;
}

/// @nodoc
abstract class $MyShopsEventCopyWith<$Res> {
  factory $MyShopsEventCopyWith(
          MyShopsEvent value, $Res Function(MyShopsEvent) then) =
      _$MyShopsEventCopyWithImpl<$Res>;
  $Res call({bool load});
}

/// @nodoc
class _$MyShopsEventCopyWithImpl<$Res> implements $MyShopsEventCopyWith<$Res> {
  _$MyShopsEventCopyWithImpl(this._value, this._then);

  final MyShopsEvent _value;
  // ignore: unused_field
  final $Res Function(MyShopsEvent) _then;

  @override
  $Res call({
    Object load = freezed,
  }) {
    return _then(_value.copyWith(
      load: load == freezed ? _value.load : load as bool,
    ));
  }
}

/// @nodoc
abstract class $LoadCopyWith<$Res> implements $MyShopsEventCopyWith<$Res> {
  factory $LoadCopyWith(Load value, $Res Function(Load) then) =
      _$LoadCopyWithImpl<$Res>;
  @override
  $Res call({bool load});
}

/// @nodoc
class _$LoadCopyWithImpl<$Res> extends _$MyShopsEventCopyWithImpl<$Res>
    implements $LoadCopyWith<$Res> {
  _$LoadCopyWithImpl(Load _value, $Res Function(Load) _then)
      : super(_value, (v) => _then(v as Load));

  @override
  Load get _value => super._value as Load;

  @override
  $Res call({
    Object load = freezed,
  }) {
    return _then(Load(
      load == freezed ? _value.load : load as bool,
    ));
  }
}

/// @nodoc
class _$Load implements Load {
  const _$Load(this.load) : assert(load != null);

  @override
  final bool load;

  @override
  String toString() {
    return 'MyShopsEvent.load(load: $load)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Load &&
            (identical(other.load, load) ||
                const DeepCollectionEquality().equals(other.load, load)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(load);

  @JsonKey(ignore: true)
  @override
  $LoadCopyWith<Load> get copyWith =>
      _$LoadCopyWithImpl<Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult load(bool load),
  }) {
    assert(load != null);
    return load(this.load);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult load(bool load),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this.load);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult load(Load value),
  }) {
    assert(load != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult load(Load value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements MyShopsEvent {
  const factory Load(bool load) = _$Load;

  @override
  bool get load;
  @override
  @JsonKey(ignore: true)
  $LoadCopyWith<Load> get copyWith;
}

/// @nodoc
class _$MyShopsStateTearOff {
  const _$MyShopsStateTearOff();

// ignore: unused_element
  _MyShopsState call({bool isLoading, Either<Failure, List<Shop>> shops}) {
    return _MyShopsState(
      isLoading: isLoading,
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
  Either<Failure, List<Shop>> get shops;

  @JsonKey(ignore: true)
  $MyShopsStateCopyWith<MyShopsState> get copyWith;
}

/// @nodoc
abstract class $MyShopsStateCopyWith<$Res> {
  factory $MyShopsStateCopyWith(
          MyShopsState value, $Res Function(MyShopsState) then) =
      _$MyShopsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Either<Failure, List<Shop>> shops});
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
    Object shops = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      shops: shops == freezed
          ? _value.shops
          : shops as Either<Failure, List<Shop>>,
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
  $Res call({bool isLoading, Either<Failure, List<Shop>> shops});
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
    Object shops = freezed,
  }) {
    return _then(_MyShopsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      shops: shops == freezed
          ? _value.shops
          : shops as Either<Failure, List<Shop>>,
    ));
  }
}

/// @nodoc
class _$_MyShopsState implements _MyShopsState {
  const _$_MyShopsState({this.isLoading, this.shops});

  @override
  final bool isLoading;
  @override
  final Either<Failure, List<Shop>> shops;

  @override
  String toString() {
    return 'MyShopsState(isLoading: $isLoading, shops: $shops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyShopsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(shops);

  @JsonKey(ignore: true)
  @override
  _$MyShopsStateCopyWith<_MyShopsState> get copyWith =>
      __$MyShopsStateCopyWithImpl<_MyShopsState>(this, _$identity);
}

abstract class _MyShopsState implements MyShopsState {
  const factory _MyShopsState(
      {bool isLoading, Either<Failure, List<Shop>> shops}) = _$_MyShopsState;

  @override
  bool get isLoading;
  @override
  Either<Failure, List<Shop>> get shops;
  @override
  @JsonKey(ignore: true)
  _$MyShopsStateCopyWith<_MyShopsState> get copyWith;
}
