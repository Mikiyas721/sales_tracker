import 'package:equatable/equatable.dart';

class LoginViewModel extends Equatable {
  final String phoneNumber;
  final String phoneNumberError;
  final bool isSubmitting;

  LoginViewModel({this.phoneNumber, this.phoneNumberError, this.isSubmitting = false});

  @override
  List<Object> get props => [
    phoneNumber,
    phoneNumberError,
    isSubmitting,
  ];
}
