import 'package:flutter/material.dart';
import 'package:sales_tracker/application/login/login_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/domain/use_cases/clear_loggedin_user.dart';
import 'package:sales_tracker/domain/use_cases/fetch_sales_person.dart';
import 'package:sales_tracker/domain/use_cases/get_current_autheticated_user.dart';
import 'package:sales_tracker/domain/use_cases/load_logged_in_user.dart';
import 'package:sales_tracker/domain/use_cases/login_into_api.dart';
import 'package:sales_tracker/domain/use_cases/request_firebase_verification_code.dart';
import 'package:sales_tracker/domain/use_cases/save_user.dart';
import 'package:sales_tracker/domain/use_cases/verify_firebase_code.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';
import 'package:sales_tracker/infrastructure/repos/firebase_repo_impl.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/login_view_model.dart';
import '../../common/common.dart';
import '../../application/splash/splash_bloc.dart';

class LoginController extends BlocViewModelController<LoginBloc, LoginEvent,
    LoginState, LoginViewModel> with ToastMixin {
  final BuildContext context;

  LoginController(this.context) : super(getIt.get<LoginBloc>(), false);

  @override
  LoginViewModel mapStateToViewModel(LoginState s) {
    return LoginViewModel(
      phoneNumber: s.phoneNumber.getOrElse(() => null)?.value,
      phoneNumberError: s.hasSubmittedPhoneNumber
          ? s.phoneNumber.fold((l) => l.message, (r) => null)
          : null,
      hasSubmittedPhoneNumber: s.hasSubmittedPhoneNumber,
      isRequestingCode: s.isRequestingCode,
      code: s.verificationCode.getOrElse(() => null)?.value?.toString(),
      codeError: s.hasSubmittedCode
          ? s.verificationCode.fold((l) => l.message, (r) => null)
          : null,
      isVerifyingCode: s.isVerifyingCode,
      isVerificationView: s.isVerificationView,
    );
  }

  void onPhoneNumberChanged(String phoneNumber) {
    bloc.add(LoginPhoneNumberChangedEvent(phoneNumber));
  }

  void onVerificationCodeChanged(String code) {
    bloc.add(LoginVerificationCodeChangedEvent(code));
  }

  void onSubmitPhoneNumber() {
    bloc.add(LoginPhoneNumberSubmittedEvent());
    bloc.state.phoneNumber.fold((l) {
      toastError(l.message);
    }, (phoneNumber) async {
      bloc.add(LoginVerificationCodeRequestedEvent());
      final apiResult =
          await getIt.get<FetchSalesPerson>().execute(phoneNumber);
      apiResult.fold((l) {
        toastError(l.message);
        bloc.add(LoginVerificationCodeRequestFailedEvent(l));
      }, (r) async {
        final phoneAuthResult = await getIt
            .get<RequestFirebaseVerificationCode>()
            .execute(phoneNumber);

        if (phoneAuthResult is PhoneAuthSuccessResult) {
          loginIntoApi(phoneAuthResult.token);
        } else if (phoneAuthResult is PhoneAuthFailedResult) {
          bloc.add(LoginVerificationCodeRequestFailedEvent(
              SimpleFailure(phoneAuthResult.failureMessage)));
          toastError(phoneAuthResult.failureMessage);
        } else if (phoneAuthResult is PhoneAuthCodeSentResult) {
          bloc.add(LoginAutoRetrievalTimedOutEvent());
        }
      });
    });
  }

  void onWrongNumber() {
    bloc.add(LoginWrongNumberEvent());
  }

  void onVerifyCode() {
    bloc.add(LoginVerificationCodeSubmittedEvent());
    bloc.state.verificationCode.fold((l) {
      toastError(l.message);
      bloc.add(LoginVerifyingCodeFailedEvent(l));
    }, (r) async {
      bloc.add(LoginVerifyingCodeEvent());
      final verificationResult =
          await getIt.get<VerifyFirebaseCode>().execute(r.value.toString());
      verificationResult.fold((l) {
        bloc.add(LoginVerifyingCodeFailedEvent(l));
        toastError(l.message);
      }, (r) {
        loginIntoApi(r);
      });
    });
  }

  void loginIntoApi(String idToken) async {
    final result = await getIt.get<LoginIntoApi>().execute(idToken);
    result.fold((l) {
      bloc.add(LoginVerifyingCodeFailedEvent(l));
      toastError(l.message);
    }, (response) {
      final loggedInUser = User.create(
        id: response['id'],
        name: Name.create(response['name']).getOrElse(() => null),
        phoneNumber:
            PhoneNumber.create(response['phoneNumber']).getOrElse(() => null),
        token: response['token'],
        createdAt: DateTime.parse(response['createdAt']),
        updatedAt: DateTime.parse(response['updatedAt']),
      );
      loggedInUser.fold(() {
        bloc.add(LoginVerifyingCodeFailedEvent(
            SimpleFailure("loginPage.noUserFound".tr)));
        toastError("loginPage.noUserFound".tr);
      }, (a) async {
        await getIt.get<SaveUser>().execute(a);
        getIt
            .get<SplashBloc>()
            .add(UserChangedSplashEvent(Failure.getOption(a)));
        bloc.add(LoginVerifyingCodeSucceededEvent());
        Navigator.pushNamedAndRemoveUntil(
            context, '/homePage', (route) => false);
      });
    });
  }

  void onAccountTap() async {
    final menuStrings = ['Languages', 'Logout'];
    final response = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(100, 80, 0, 0),
      items: menuStrings
          .map((e) => PopupMenuItem<String>(
                child: Text('$e'),
                value: e,
              ))
          .toList(),
    );
    if (response == menuStrings[0])
      Navigator.pushNamed(context, '/languagesPage');
    else if (response == menuStrings[1]) onShowDialog();
  }

  void onShowDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(
                'homePage.signingOut'.tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              content: Text('homePage.logoutQuestion'.tr),
              actions: [
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('homePage.cancel'.tr)),
                FlatButton(onPressed: onLogout, child: Text('homePage.ok'.tr))
              ]);
        });
  }

  void onLogout() async {
    final result = await getIt.get<ClearLoggedInUser>().execute();
    if (result)
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    else
      toastError("loginPage.logoutErrorMessage".tr);
  }
}
