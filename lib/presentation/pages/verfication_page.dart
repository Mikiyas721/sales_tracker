import 'package:flutter/material.dart';
import 'package:sales_tracker/presentation/models/verification_view_model.dart';
import 'package:sales_tracker/presentation/views/verification_view.dart';
import '../../common/common.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              200.vSpace,
              Text(
                'Verify',
                style: context.headline3,
              ),
              20.vSpace,
              Text(
                'We have sent a 6 digit verification code. Please enter the code to continue',
                style: context.caption,
              ),
              200.vSpace,
              VerificationView(
                  verificationViewModel: VerificationViewModel(),
                  onVerificationCodeChanged: (String onChanged) {},
                  onLogin: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/homePage',(_)=>false);
                  }),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}
