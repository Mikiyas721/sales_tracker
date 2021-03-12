part of '../login/login_bloc.dart';

@freezed
abstract class LoginState extends BlocState with _$LoginState {
  const factory LoginState({
    Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
    Either<VerificationCodeFailure, VerificationCode> verificationCode,
    Option<Failure> codeRequestFailure,
    Option<Failure> verificationFailure,
    bool hasSubmittedPhoneNumber,
    bool isRequestingCode,
    bool hasSubmittedCode,
    bool isVerifyingCode,
    bool isVerificationView,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        phoneNumber: PhoneNumber.create(""),
        verificationCode: VerificationCode.createFromString(""),
        codeRequestFailure: none(),
        verificationFailure: none(),
        hasSubmittedPhoneNumber: false,
        isRequestingCode: false,
        hasSubmittedCode: false,
        isVerifyingCode: false,
        isVerificationView: false,
      );
}
