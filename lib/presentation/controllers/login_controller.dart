import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/login/login_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/use_cases/clear_loggedin_user.dart';
import 'package:sales_tracker/domain/use_cases/fetch_sales_person.dart';
import 'package:sales_tracker/domain/use_cases/request_firebase_verification_code.dart';
import 'package:sales_tracker/domain/use_cases/verify_firebase_code.dart';
import 'package:sales_tracker/infrastructure/repos/firebase_repo_impl.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/login_view_model.dart';

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
      final apiResult =
          await getIt.get<FetchSalesPerson>().execute(phoneNumber);
      apiResult.fold((l) {
        toastError(l.message);
      }, (r) async {
        bloc.add(LoginVerificationCodeRequestedEvent());
        final phoneAuthResult = await getIt
            .get<RequestFirebaseVerificationCode>()
            .execute(phoneNumber);

        if (phoneAuthResult is PhoneAuthSuccessResult) {
          //phoneAuthResult.token
          //todo call api
        } else if (phoneAuthResult is PhoneAuthFailedResult) {
          bloc.add(LoginVerificationCodeRequestedEvent());
          toastError(phoneAuthResult.failure);
        } else if (phoneAuthResult is PhoneAuthCodeSentResult) {
          bloc.add(LoginAutoRetrievalTimedOutEvent());
        }
      });
    });
  }

  void onVerifyCode() {
    bloc.add(LoginVerificationCodeSubmittedEvent());
    bloc.state.verificationCode.fold((l) {
      toastError(l.message);
    }, (r) async {
      bloc.add(LoginVerifyingCodeEvent());
      final verificationResult =
          await getIt.get<VerifyFirebaseCode>().execute(r.value.toString());
      verificationResult.fold((l) {
        bloc.add(LoginVerifyingCodeFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(LoginVerifyingCodeSucceededEvent());
        //phoneAuthResult.token
        //todo call api
        //save token on shared preference
      });
    });
  }

  void onLogout() async {
    final result = await getIt.get<ClearLoggedInUser>().execute();
    if (result)
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    else
      toastError("Unable to logout.Please try again");
  }
}
