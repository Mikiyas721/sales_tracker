import 'package:sales_tracker/common/view_model.dart';

class LoginViewModel extends ViewModel {
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
