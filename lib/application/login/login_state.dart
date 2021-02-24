part of '../login/login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required PhoneNumber phoneNumber,
    @required bool showErrorMessage,
    @required bool isSubmitting,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
      phoneNumber: PhoneNumber.create('').getOrElse(() => null),
      showErrorMessage: false,
      isSubmitting: false);
}
