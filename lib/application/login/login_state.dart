part of '../login/login_bloc.dart';

@freezed
abstract class LoginState extends BlocState with _$LoginState {
  const factory LoginState({
    Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
    Option<Failure> loginRequestFailure,
    bool hasSubmitted,
    bool isRequesting,
    bool hasRequested,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        phoneNumber: PhoneNumber.create(""),
        loginRequestFailure: none(),
        hasSubmitted: false,
        isRequesting: false,
        hasRequested: false,
      );
}
