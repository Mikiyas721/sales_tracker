import 'package:flutter/material.dart';
import 'package:sales_tracker/presentation/models/verification_view_model.dart';
import '../../presentation/widgets/my_button.dart';
import '../../presentation/widgets/my_text_field.dart';
import '../../common/common.dart';

class VerificationView extends StatelessWidget {
  final VerificationViewModel verificationViewModel;
  final void Function(String value) onVerificationCodeChanged;
  final VoidCallback onLogin;

  const VerificationView(
      {Key key,
        @required this.verificationViewModel,
        @required this.onVerificationCodeChanged,
        @required this.onLogin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyTextField( /// To be changed by a verification input field
            errorText: verificationViewModel.verificationCodeError,
            labelText: 'phone number',
            icon: Icons.phone,
            onChanged: onVerificationCodeChanged),
        100.vSpace,
        MyButton(
          label: 'Login',
          onSubmit: onLogin,
          isLoading: verificationViewModel.isVerifying,
        )
      ],
    );
  }
}
