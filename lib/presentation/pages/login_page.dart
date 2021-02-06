import 'package:flutter/material.dart';
import '../../presentation/models/login_view_model.dart';
import '../../presentation/views/login_view.dart';
import '../../common/common.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: 20.hPadding,
        child: Center(
          child: Column(
            children: [
              Text('Welcome'),
              50.vSpace,
              LoginView(
                  loginViewModel: LoginViewModel(),
                  onPhoneNumberChanged: (String onChanged) {},
                  onSubmit: () {})
            ],
          ),
        ),
      ),
    );
  }
}
