import 'package:sales_tracker/common/view_model.dart';

class VerificationViewModel extends ViewModel {
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
