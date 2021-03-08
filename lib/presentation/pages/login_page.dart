import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/login_controller.dart';
import '../../presentation/models/login_view_model.dart';
import '../../presentation/views/login_view.dart';
import '../../common/common.dart';

class LoginPage extends StatelessWidget {
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
              ViewModelBuilder.withController<LoginViewModel, LoginController>(
                create: () => LoginController(context),
                builder: (context, controller, model) {
                  return LoginView(
                    loginViewModel: model,
                    onPhoneNumberChanged: controller.onPhoneNumberChanged,
                    onVerificationCodeChanged:
                        controller.onVerificationCodeChanged,
                    onSubmitPhoneNumber: controller.onSubmitPhoneNumber,
                    onVerify: controller.onVerifyCode,
                  );
                },
              ),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}
