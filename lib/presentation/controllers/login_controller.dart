import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/login/login_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/controller/toast_mixin.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/use_cases/request_firebase_verification_code.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/login_view_model.dart';

class LoginController extends BlocViewModelController<LoginBloc, LoginEvent, LoginState, LoginViewModel>
    with ToastMixin {
  final BuildContext context;

  LoginController(this.context) : super(getIt.get<LoginBloc>(), false);

  @override
  LoginViewModel mapStateToViewModel(LoginState s) {
    return LoginViewModel(
      phoneNumber: s.phoneNumber.getOrElse(() => null)?.value,
      phoneNumberError: s.hasSubmitted ? s.phoneNumber.fold((l) => l.message, (r) => null) : null,
      isSubmitting: s.isRequesting,
    );
  }

  void onPhoneNumberChanged(String phoneNumber) {
    bloc.add(LoginPhoneNumberChangedEvent(phoneNumber));
  }

  void onSubmit() {
    bloc.add(LoginSubmittedEvent());
    bloc.state.phoneNumber.fold((l) {
      toastSuccess(l.message);
    }, (r) async {
      final useCase = getIt.get<RequestFirebaseVerificationCode>();
      final result = await useCase.execute(r.value);
      result.fold(() {
        bloc.add(LoginRequestFailedEvent(SimpleFailure('Unable to send SMS')));
        toastSuccess("Unable to send SMS");
      }, (a) {
        bloc.add(LoginRequestSucceededEvent());
        toastSuccess("Requested Successfully!");
      });
    });
  }
}
