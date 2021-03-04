import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/login/login_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/use_cases/clear_loggedin_user.dart';
import 'package:sales_tracker/domain/use_cases/fetch_sales_person.dart';
import 'package:sales_tracker/domain/use_cases/request_firebase_verification_code.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/login_view_model.dart';

class UserController extends BlocViewModelController<LoginBloc, LoginEvent,
    LoginState, LoginViewModel> with ToastMixin {
  final BuildContext context;

  UserController(this.context) : super(getIt.get<LoginBloc>(), false);

  @override
  LoginViewModel mapStateToViewModel(LoginState s) {
    return LoginViewModel(
      phoneNumber: s.phoneNumber?.getOrElse(() => null)?.value,
      phoneNumberError: s.hasSubmitted
          ? s.phoneNumber.fold((l) => l.message, (r) => null)
          : null,
      isSubmitting: s.isRequesting,
    );
  }

  void onPhoneNumberChanged(String phoneNumber) {
    bloc.add(LoginPhoneNumberChangedEvent(phoneNumber));
  }

  void onSubmit() {
    bloc.add(LoginSubmittedEvent());
    bloc.state.phoneNumber.fold((l) {
      toastError(l.message);
    }, (phoneNumber) async {
      final apiResult =
          await getIt.get<FetchSalesPerson>().execute(phoneNumber);
      apiResult.fold((l) {
        bloc.add(LoginRequestFailedEvent(l));
        toastError(l.message);
      }, (r) async {
        print(r);
        final firebaseResult = await getIt
            .get<RequestFirebaseVerificationCode>()
            .execute(phoneNumber);
        firebaseResult.fold((l) {
          bloc.add(LoginRequestFailedEvent(l));
          toastError(l.message);
        }, (a) {
          bloc.add(LoginRequestSucceededEvent());
          toastSuccess("Requested Successfully!");
        });
      });
    });
  }

  void logout() async {
    final result = await getIt.get<ClearLoggedInUser>().execute();
    if (result)
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    else
      toastError("Unable to logout.Please try again");
  }
}
