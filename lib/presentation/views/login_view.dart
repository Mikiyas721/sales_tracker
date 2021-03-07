import 'package:flutter/material.dart';
import '../../presentation/models/login_view_model.dart';
import '../../presentation/widgets/my_button.dart';
import '../../presentation/widgets/my_text_field.dart';
import '../../common/common.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel loginViewModel;
  final void Function(String value) onPhoneNumberChanged;
  final VoidCallback onSubmit;

  const LoginView(
      {Key key,
      @required this.loginViewModel,
      @required this.onPhoneNumberChanged,
      @required this.onSubmit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyTextField(
          errorText: loginViewModel.phoneNumberError,
          labelText: 'phone number',
          icon: Icons.phone,
          onChanged: onPhoneNumberChanged,
          onSubmitted: (s) => onSubmit(),
          keyboardType: TextInputType.phone,
        ),
        100.vSpace,
        MyButton(
          label: 'Verify',
          onSubmit: onSubmit,
          isLoading: loginViewModel.isSubmitting,
        )
      ],
    );
  }
}
