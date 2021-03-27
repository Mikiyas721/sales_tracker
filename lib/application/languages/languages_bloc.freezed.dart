// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'languages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LanguagesStateTearOff {
  const _$LanguagesStateTearOff();

// ignore: unused_element
  _LanguagesState call({int selectedLanguage}) {
    return _LanguagesState(
      selectedLanguage: selectedLanguage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LanguagesState = _$LanguagesStateTearOff();

/// @nodoc
mixin _$LanguagesState {
  int get selectedLanguage;

  @JsonKey(ignore: true)
  $LanguagesStateCopyWith<LanguagesState> get copyWith;
}

/// @nodoc
abstract class $LanguagesStateCopyWith<$Res> {
  factory $LanguagesStateCopyWith(
          LanguagesState value, $Res Function(LanguagesState) then) =
      _$LanguagesStateCopyWithImpl<$Res>;
  $Res call({int selectedLanguage});
}

/// @nodoc
class _$LanguagesStateCopyWithImpl<$Res>
    implements $LanguagesStateCopyWith<$Res> {
  _$LanguagesStateCopyWithImpl(this._value, this._then);

  final LanguagesState _value;
  // ignore: unused_field
  final $Res Function(LanguagesState) _then;

  @override
  $Res call({
    Object selectedLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedLanguage: selectedLanguage == freezed
          ? _value.selectedLanguage
          : selectedLanguage as int,
    ));
  }
}

/// @nodoc
abstract class _$LanguagesStateCopyWith<$Res>
    implements $LanguagesStateCopyWith<$Res> {
  factory _$LanguagesStateCopyWith(
          _LanguagesState value, $Res Function(_LanguagesState) then) =
      __$LanguagesStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedLanguage});
}

/// @nodoc
class __$LanguagesStateCopyWithImpl<$Res>
    extends _$LanguagesStateCopyWithImpl<$Res>
    implements _$LanguagesStateCopyWith<$Res> {
  __$LanguagesStateCopyWithImpl(
      _LanguagesState _value, $Res Function(_LanguagesState) _then)
      : super(_value, (v) => _then(v as _LanguagesState));

  @override
  _LanguagesState get _value => super._value as _LanguagesState;

  @override
  $Res call({
    Object selectedLanguage = freezed,
  }) {
    return _then(_LanguagesState(
      selectedLanguage: selectedLanguage == freezed
          ? _value.selectedLanguage
          : selectedLanguage as int,
    ));
  }
}

/// @nodoc
class _$_LanguagesState implements _LanguagesState {
  const _$_LanguagesState({this.selectedLanguage});

  @override
  final int selectedLanguage;

  @override
  String toString() {
    return 'LanguagesState(selectedLanguage: $selectedLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguagesState &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.selectedLanguage, selectedLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedLanguage);

  @JsonKey(ignore: true)
  @override
  _$LanguagesStateCopyWith<_LanguagesState> get copyWith =>
      __$LanguagesStateCopyWithImpl<_LanguagesState>(this, _$identity);
}

abstract class _LanguagesState implements LanguagesState {
  const factory _LanguagesState({int selectedLanguage}) = _$_LanguagesState;

  @override
  int get selectedLanguage;
  @override
  @JsonKey(ignore: true)
  _$LanguagesStateCopyWith<_LanguagesState> get copyWith;
}
