import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sales_tracker/presentation/widgets/my_button.dart';
import 'package:sales_tracker/presentation/widgets/my_text_field.dart';
import '../../presentation/models/login_view_model.dart';
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
                'loginPage.verify'.tr,
                style: context.headline3,
              ),
              20.vSpace,
              Text(
                'loginPage.codeSentMessage'.tr,
                style: context.caption,
              ),
              200.vSpace,
              PinCodeTextField(
                length: 6,
                appContext: context,
                keyboardType: TextInputType.number,
                onChanged: onVerificationCodeChanged,
                onCompleted: (code) => onVerify(),
                backgroundColor: Colors.grey[50],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: onWrongNumber,
                      child: Text('loginPage.wrongNumber'.tr)),
                ],
              ),
              100.vSpace,
              MyButton(
                label: 'loginPage.verify'.tr,
                onSubmit: onVerify,
                isLoading: loginViewModel.isVerifyingCode,
              )
            ]
          : [
              200.vSpace,
              Text(
                'loginPage.welcome'.tr,
                style: context.headline3,
              ),
              200.vSpace,
              MyTextField(
                errorText: loginViewModel.phoneNumberError,
                labelText: 'loginPage.phoneNumber'.tr,
                icon: Icons.phone,
                onChanged: onPhoneNumberChanged,
                onSubmitted: (s) => onSubmitPhoneNumber(),
                keyboardType: TextInputType.phone,
              ),
              100.vSpace,
              MyButton(
                label: 'loginPage.submit'.tr,
                onSubmit: onSubmitPhoneNumber,
                isLoading: loginViewModel.isRequestingCode,
              )
            ],
    );
  }
}
