import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/view_model.dart';
import 'package:sales_tracker/domain/use_cases/load_logged_in_user.dart';
import 'package:sales_tracker/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../application/splash/splash_bloc.dart';

class SplashController extends BlocViewModelController<SplashBloc, SplashEvent,
    SplashState, ViewModel> {
  final BuildContext context;

  SplashController(this.context) : super(getIt.get<SplashBloc>(), false);

  @override
  ViewModel mapStateToViewModel(SplashState s) {}

  loadUser() async {
    getIt.registerSingleton<SharedPreferences>(
        await SharedPreferences.getInstance());
    final result = await getIt.get<LoadLoggedInUser>().execute();
    await Future.delayed(Duration(seconds: 1));
    result.fold(() {
      Navigator.pushReplacementNamed(context, '/loginPage');
    }, (a) {
      bloc.add(UserChangedSplashEvent(result));
      Navigator.pushReplacementNamed(context, '/homePage');
    });
  }
}
