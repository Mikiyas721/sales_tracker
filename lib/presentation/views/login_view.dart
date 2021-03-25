import 'package:flutter/material.dart';
import '../../presentation/models/login_view_model.dart';
import '../../presentation/widgets/my_button.dart';
import '../../presentation/widgets/my_text_field.dart';
import '../../common/common.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel loginViewModel;
  final void Function(String value) onPhoneNumberChanged;
  final void Function(String value) onVerificationCodeChanged;
  final VoidCallback onSubmitPhoneNumber;
  final VoidCallback onVerify;
  final VoidCallback onWrongNumber;

  const LoginView({
    Key key,
    @required this.loginViewModel,
    @required this.onPhoneNumberChanged,
    @required this.onVerificationCodeChanged,
    @required this.onSubmitPhoneNumber,
    @required this.onVerify,
    @required this.onWrongNumber,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: loginViewModel.isVerificationView
          ? [
              200.vSpace,
              Text(
                'Verify',
                style: context.headline3,
              ),
              20.vSpace,
              Text(
                'We have sent a 6 digit verification code.\nPlease enter the code to continue',
                style: context.caption,
              ),
              200.vSpace,
              MyTextField(
                errorText: loginViewModel.codeError,
                labelText: 'verification code',
                icon: Icons.code,
                onChanged: onVerificationCodeChanged,
                onSubmitted: (code) => onVerify(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: onWrongNumber, child: Text('Wrong number?')),
                ],
              ),

              //TODO change by code input field
              100.vSpace,
              MyButton(
                label: 'Verify',
                onSubmit: onVerify,
                isLoading: loginViewModel.isVerifyingCode,
              )
            ]
          : [
              200.vSpace,
              Text(
                'Welcome',
                style: context.headline3,
              ),
              200.vSpace,
              MyTextField(
                errorText: loginViewModel.phoneNumberError,
                labelText: 'Phone Number',
                icon: Icons.phone,
                onChanged: onPhoneNumberChanged,
                onSubmitted: (s) => onSubmitPhoneNumber(),
                keyboardType: TextInputType.phone,
              ),
              100.vSpace,
              MyButton(
                label: 'Submit',
                onSubmit: onSubmitPhoneNumber,
                isLoading: loginViewModel.isRequestingCode,
              )
            ],
    );
  }
}
