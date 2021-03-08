import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class LoginViewModel extends ViewModel {
  final String phoneNumber;
  final String phoneNumberError;
  final bool hasSubmittedPhoneNumber;
  final bool isRequestingCode;
  final String code;
  final String codeError;
  final bool isVerifyingCode;
  final bool isVerificationView;

  LoginViewModel({
    @required this.phoneNumber,
    @required this.phoneNumberError,
    @required this.hasSubmittedPhoneNumber,
    @required this.isRequestingCode,
    @required this.code,
    @required this.codeError,
    @required this.isVerifyingCode,
    @required this.isVerificationView,
  });

  @override
  List<Object> get props => [
        phoneNumber,
        phoneNumberError,
        hasSubmittedPhoneNumber,
        isRequestingCode,
        code,
        codeError,
        isVerifyingCode,
        isVerificationView,
      ];
}
