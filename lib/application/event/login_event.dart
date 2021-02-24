part of '../bloc/login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent{
  const factory LoginEvent.phoneNumberChanged(String phoneNumber) = PhoneNumberChanged;
  const factory LoginEvent.submitPhoneNumber() = SubmitPhoneNumber;
}