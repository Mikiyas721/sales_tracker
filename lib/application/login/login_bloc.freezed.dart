// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Option<Failure> loginRequestFailure,
      bool hasSubmitted,
      bool isRequesting,
      bool hasRequested}) {
    return _LoginState(
      phoneNumber: phoneNumber,
      loginRequestFailure: loginRequestFailure,
      hasSubmitted: hasSubmitted,
      isRequesting: isRequesting,
      hasRequested: hasRequested,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  Option<Failure> get loginRequestFailure;
  bool get hasSubmitted;
  bool get isRequesting;
  bool get hasRequested;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Option<Failure> loginRequestFailure,
      bool hasSubmitted,
      bool isRequesting,
      bool hasRequested});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object loginRequestFailure = freezed,
    Object hasSubmitted = freezed,
    Object isRequesting = freezed,
    Object hasRequested = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      loginRequestFailure: loginRequestFailure == freezed
          ? _value.loginRequestFailure
          : loginRequestFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      isRequesting:
          isRequesting == freezed ? _value.isRequesting : isRequesting as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Option<Failure> loginRequestFailure,
      bool hasSubmitted,
      bool isRequesting,
      bool hasRequested});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object loginRequestFailure = freezed,
    Object hasSubmitted = freezed,
    Object isRequesting = freezed,
    Object hasRequested = freezed,
  }) {
    return _then(_LoginState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      loginRequestFailure: loginRequestFailure == freezed
          ? _value.loginRequestFailure
          : loginRequestFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      isRequesting:
          isRequesting == freezed ? _value.isRequesting : isRequesting as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
    ));
  }
}

/// @nodoc
class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.phoneNumber,
      this.loginRequestFailure,
      this.hasSubmitted,
      this.isRequesting,
      this.hasRequested});

  @override
  final Either<PhoneNumberFailure, PhoneNumber> phoneNumber;
  @override
  final Option<Failure> loginRequestFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool isRequesting;
  @override
  final bool hasRequested;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, loginRequestFailure: $loginRequestFailure, hasSubmitted: $hasSubmitted, isRequesting: $isRequesting, hasRequested: $hasRequested)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.loginRequestFailure, loginRequestFailure) ||
                const DeepCollectionEquality()
                    .equals(other.loginRequestFailure, loginRequestFailure)) &&
            (identical(other.hasSubmitted, hasSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.hasSubmitted, hasSubmitted)) &&
            (identical(other.isRequesting, isRequesting) ||
                const DeepCollectionEquality()
                    .equals(other.isRequesting, isRequesting)) &&
            (identical(other.hasRequested, hasRequested) ||
                const DeepCollectionEquality()
                    .equals(other.hasRequested, hasRequested)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(loginRequestFailure) ^
      const DeepCollectionEquality().hash(hasSubmitted) ^
      const DeepCollectionEquality().hash(isRequesting) ^
      const DeepCollectionEquality().hash(hasRequested);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Option<Failure> loginRequestFailure,
      bool hasSubmitted,
      bool isRequesting,
      bool hasRequested}) = _$_LoginState;

  @override
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  @override
  Option<Failure> get loginRequestFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get isRequesting;
  @override
  bool get hasRequested;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
