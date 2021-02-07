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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              200.vSpace,
              Text(
                'Welcome',
                style: context.headline3,
              ),
              200.vSpace,
              LoginView(
                  loginViewModel: LoginViewModel(),
                  onPhoneNumberChanged: (String onChanged) {},
                  onSubmit: () {
                    Navigator.pushNamed(context, '/homePage');
                  }),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}
