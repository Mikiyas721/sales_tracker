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
      Either<VerificationCodeFailure, VerificationCode> verificationCode,
      Option<Failure> codeRequestFailure,
      Option<Failure> verificationFailure,
      bool hasSubmittedPhoneNumber,
      bool isRequestingCode,
      bool hasSubmittedCode,
      bool isVerifyingCode,
      bool isVerificationView}) {
    return _LoginState(
      phoneNumber: phoneNumber,
      verificationCode: verificationCode,
      codeRequestFailure: codeRequestFailure,
      verificationFailure: verificationFailure,
      hasSubmittedPhoneNumber: hasSubmittedPhoneNumber,
      isRequestingCode: isRequestingCode,
      hasSubmittedCode: hasSubmittedCode,
      isVerifyingCode: isVerifyingCode,
      isVerificationView: isVerificationView,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  Either<VerificationCodeFailure, VerificationCode> get verificationCode;
  Option<Failure> get codeRequestFailure;
  Option<Failure> get verificationFailure;
  bool get hasSubmittedPhoneNumber;
  bool get isRequestingCode;
  bool get hasSubmittedCode;
  bool get isVerifyingCode;
  bool get isVerificationView;

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
      Either<VerificationCodeFailure, VerificationCode> verificationCode,
      Option<Failure> codeRequestFailure,
      Option<Failure> verificationFailure,
      bool hasSubmittedPhoneNumber,
      bool isRequestingCode,
      bool hasSubmittedCode,
      bool isVerifyingCode,
      bool isVerificationView});
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
    Object verificationCode = freezed,
    Object codeRequestFailure = freezed,
    Object verificationFailure = freezed,
    Object hasSubmittedPhoneNumber = freezed,
    Object isRequestingCode = freezed,
    Object hasSubmittedCode = freezed,
    Object isVerifyingCode = freezed,
    Object isVerificationView = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode
              as Either<VerificationCodeFailure, VerificationCode>,
      codeRequestFailure: codeRequestFailure == freezed
          ? _value.codeRequestFailure
          : codeRequestFailure as Option<Failure>,
      verificationFailure: verificationFailure == freezed
          ? _value.verificationFailure
          : verificationFailure as Option<Failure>,
      hasSubmittedPhoneNumber: hasSubmittedPhoneNumber == freezed
          ? _value.hasSubmittedPhoneNumber
          : hasSubmittedPhoneNumber as bool,
      isRequestingCode: isRequestingCode == freezed
          ? _value.isRequestingCode
          : isRequestingCode as bool,
      hasSubmittedCode: hasSubmittedCode == freezed
          ? _value.hasSubmittedCode
          : hasSubmittedCode as bool,
      isVerifyingCode: isVerifyingCode == freezed
          ? _value.isVerifyingCode
          : isVerifyingCode as bool,
      isVerificationView: isVerificationView == freezed
          ? _value.isVerificationView
          : isVerificationView as bool,
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
      Either<VerificationCodeFailure, VerificationCode> verificationCode,
      Option<Failure> codeRequestFailure,
      Option<Failure> verificationFailure,
      bool hasSubmittedPhoneNumber,
      bool isRequestingCode,
      bool hasSubmittedCode,
      bool isVerifyingCode,
      bool isVerificationView});
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
    Object verificationCode = freezed,
    Object codeRequestFailure = freezed,
    Object verificationFailure = freezed,
    Object hasSubmittedPhoneNumber = freezed,
    Object isRequestingCode = freezed,
    Object hasSubmittedCode = freezed,
    Object isVerifyingCode = freezed,
    Object isVerificationView = freezed,
  }) {
    return _then(_LoginState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode
              as Either<VerificationCodeFailure, VerificationCode>,
      codeRequestFailure: codeRequestFailure == freezed
          ? _value.codeRequestFailure
          : codeRequestFailure as Option<Failure>,
      verificationFailure: verificationFailure == freezed
          ? _value.verificationFailure
          : verificationFailure as Option<Failure>,
      hasSubmittedPhoneNumber: hasSubmittedPhoneNumber == freezed
          ? _value.hasSubmittedPhoneNumber
          : hasSubmittedPhoneNumber as bool,
      isRequestingCode: isRequestingCode == freezed
          ? _value.isRequestingCode
          : isRequestingCode as bool,
      hasSubmittedCode: hasSubmittedCode == freezed
          ? _value.hasSubmittedCode
          : hasSubmittedCode as bool,
      isVerifyingCode: isVerifyingCode == freezed
          ? _value.isVerifyingCode
          : isVerifyingCode as bool,
      isVerificationView: isVerificationView == freezed
          ? _value.isVerificationView
          : isVerificationView as bool,
    ));
  }
}

/// @nodoc
class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.phoneNumber,
      this.verificationCode,
      this.codeRequestFailure,
      this.verificationFailure,
      this.hasSubmittedPhoneNumber,
      this.isRequestingCode,
      this.hasSubmittedCode,
      this.isVerifyingCode,
      this.isVerificationView});

  @override
  final Either<PhoneNumberFailure, PhoneNumber> phoneNumber;
  @override
  final Either<VerificationCodeFailure, VerificationCode> verificationCode;
  @override
  final Option<Failure> codeRequestFailure;
  @override
  final Option<Failure> verificationFailure;
  @override
  final bool hasSubmittedPhoneNumber;
  @override
  final bool isRequestingCode;
  @override
  final bool hasSubmittedCode;
  @override
  final bool isVerifyingCode;
  @override
  final bool isVerificationView;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, verificationCode: $verificationCode, codeRequestFailure: $codeRequestFailure, verificationFailure: $verificationFailure, hasSubmittedPhoneNumber: $hasSubmittedPhoneNumber, isRequestingCode: $isRequestingCode, hasSubmittedCode: $hasSubmittedCode, isVerifyingCode: $isVerifyingCode, isVerificationView: $isVerificationView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)) &&
            (identical(other.codeRequestFailure, codeRequestFailure) ||
                const DeepCollectionEquality()
                    .equals(other.codeRequestFailure, codeRequestFailure)) &&
            (identical(other.verificationFailure, verificationFailure) ||
                const DeepCollectionEquality()
                    .equals(other.verificationFailure, verificationFailure)) &&
            (identical(
                    other.hasSubmittedPhoneNumber, hasSubmittedPhoneNumber) ||
                const DeepCollectionEquality().equals(
                    other.hasSubmittedPhoneNumber, hasSubmittedPhoneNumber)) &&
            (identical(other.isRequestingCode, isRequestingCode) ||
                const DeepCollectionEquality()
                    .equals(other.isRequestingCode, isRequestingCode)) &&
            (identical(other.hasSubmittedCode, hasSubmittedCode) ||
                const DeepCollectionEquality()
                    .equals(other.hasSubmittedCode, hasSubmittedCode)) &&
            (identical(other.isVerifyingCode, isVerifyingCode) ||
                const DeepCollectionEquality()
                    .equals(other.isVerifyingCode, isVerifyingCode)) &&
            (identical(other.isVerificationView, isVerificationView) ||
                const DeepCollectionEquality()
                    .equals(other.isVerificationView, isVerificationView)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(verificationCode) ^
      const DeepCollectionEquality().hash(codeRequestFailure) ^
      const DeepCollectionEquality().hash(verificationFailure) ^
      const DeepCollectionEquality().hash(hasSubmittedPhoneNumber) ^
      const DeepCollectionEquality().hash(isRequestingCode) ^
      const DeepCollectionEquality().hash(hasSubmittedCode) ^
      const DeepCollectionEquality().hash(isVerifyingCode) ^
      const DeepCollectionEquality().hash(isVerificationView);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Either<VerificationCodeFailure, VerificationCode> verificationCode,
      Option<Failure> codeRequestFailure,
      Option<Failure> verificationFailure,
      bool hasSubmittedPhoneNumber,
      bool isRequestingCode,
      bool hasSubmittedCode,
      bool isVerifyingCode,
      bool isVerificationView}) = _$_LoginState;

  @override
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  @override
  Either<VerificationCodeFailure, VerificationCode> get verificationCode;
  @override
  Option<Failure> get codeRequestFailure;
  @override
  Option<Failure> get verificationFailure;
  @override
  bool get hasSubmittedPhoneNumber;
  @override
  bool get isRequestingCode;
  @override
  bool get hasSubmittedCode;
  @override
  bool get isVerifyingCode;
  @override
  bool get isVerificationView;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
