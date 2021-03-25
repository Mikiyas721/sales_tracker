// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocaleStateTearOff {
  const _$LocaleStateTearOff();

// ignore: unused_element
  _LocaleState create({List<FLocale> locales, Option<String> activeFLocaleId}) {
    return _LocaleState(
      locales: locales,
      activeFLocaleId: activeFLocaleId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocaleState = _$LocaleStateTearOff();

/// @nodoc
mixin _$LocaleState {
  List<FLocale> get locales;
  Option<String> get activeFLocaleId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult create(List<FLocale> locales, Option<String> activeFLocaleId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(List<FLocale> locales, Option<String> activeFLocaleId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(_LocaleState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(_LocaleState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $LocaleStateCopyWith<LocaleState> get copyWith;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res>;
  $Res call({List<FLocale> locales, Option<String> activeFLocaleId});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res> implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  final LocaleState _value;
  // ignore: unused_field
  final $Res Function(LocaleState) _then;

  @override
  $Res call({
    Object locales = freezed,
    Object activeFLocaleId = freezed,
  }) {
    return _then(_value.copyWith(
      locales: locales == freezed ? _value.locales : locales as List<FLocale>,
      activeFLocaleId: activeFLocaleId == freezed
          ? _value.activeFLocaleId
          : activeFLocaleId as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$LocaleStateCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$LocaleStateCopyWith(
          _LocaleState value, $Res Function(_LocaleState) then) =
      __$LocaleStateCopyWithImpl<$Res>;
  @override
  $Res call({List<FLocale> locales, Option<String> activeFLocaleId});
}

/// @nodoc
class __$LocaleStateCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$LocaleStateCopyWith<$Res> {
  __$LocaleStateCopyWithImpl(
      _LocaleState _value, $Res Function(_LocaleState) _then)
      : super(_value, (v) => _then(v as _LocaleState));

  @override
  _LocaleState get _value => super._value as _LocaleState;

  @override
  $Res call({
    Object locales = freezed,
    Object activeFLocaleId = freezed,
  }) {
    return _then(_LocaleState(
      locales: locales == freezed ? _value.locales : locales as List<FLocale>,
      activeFLocaleId: activeFLocaleId == freezed
          ? _value.activeFLocaleId
          : activeFLocaleId as Option<String>,
    ));
  }
}

/// @nodoc
class _$_LocaleState extends _LocaleState {
  const _$_LocaleState({this.locales, this.activeFLocaleId}) : super._();

  @override
  final List<FLocale> locales;
  @override
  final Option<String> activeFLocaleId;

  @override
  String toString() {
    return 'LocaleState.create(locales: $locales, activeFLocaleId: $activeFLocaleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocaleState &&
            (identical(other.locales, locales) ||
                const DeepCollectionEquality()
                    .equals(other.locales, locales)) &&
            (identical(other.activeFLocaleId, activeFLocaleId) ||
                const DeepCollectionEquality()
                    .equals(other.activeFLocaleId, activeFLocaleId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locales) ^
      const DeepCollectionEquality().hash(activeFLocaleId);

  @JsonKey(ignore: true)
  @override
  _$LocaleStateCopyWith<_LocaleState> get copyWith =>
      __$LocaleStateCopyWithImpl<_LocaleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult create(List<FLocale> locales, Option<String> activeFLocaleId),
  }) {
    assert(create != null);
    return create(locales, activeFLocaleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(List<FLocale> locales, Option<String> activeFLocaleId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(locales, activeFLocaleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(_LocaleState value),
  }) {
    assert(create != null);
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(_LocaleState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _LocaleState extends LocaleState {
  const _LocaleState._() : super._();
  const factory _LocaleState(
      {List<FLocale> locales, Option<String> activeFLocaleId}) = _$_LocaleState;

  @override
  List<FLocale> get locales;
  @override
  Option<String> get activeFLocaleId;
  @override
  @JsonKey(ignore: true)
  _$LocaleStateCopyWith<_LocaleState> get copyWith;
}
