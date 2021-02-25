part of '../login/login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      bool showErrorMessage,
      bool isRequesting,
      bool hasRequested}) = _LoginState;

  factory LoginState.initial() => LoginState(
      phoneNumber: PhoneNumber.create(''),
      showErrorMessage: false,
      isRequesting: false,
      hasRequested: false);
}
