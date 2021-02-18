import 'package:equatable/equatable.dart';

class VerificationViewModel extends Equatable {
  final String verificationCode;
  final String verificationCodeError;
  final bool isVerifying;

  VerificationViewModel({this.verificationCode, this.verificationCodeError, this.isVerifying = false});

  @override
  List<Object> get props => [
    verificationCode,
    verificationCodeError,
    isVerifying,
  ];
}
