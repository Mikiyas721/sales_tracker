import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IFirebaseRepo _iFirebaseRepo;

  LoginBloc(this._iFirebaseRepo) : super(LoginState.initial());

  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(
        phoneNumberChanged: (PhoneNumberChanged phoneNumber) async* {
      yield state.copyWith(
          phoneNumber: PhoneNumber.create(phoneNumber.phoneNumber)
              .getOrElse(() => null));
    }, submitPhoneNumber: (SubmitPhoneNumber submitPhoneNumber) async* {
      yield* _performActionRequestCode(_iFirebaseRepo.requestCode);
    });
  }

  Stream<LoginState> _performActionRequestCode(
      void Function(PhoneNumber phoneNumber) requestCall) async* {
    if (state.phoneNumber.isValid()) {
      yield state.copyWith(showErrorMessage: true, isSubmitting: true);
      requestCall(state.phoneNumber);
    } else {
      yield state.copyWith(showErrorMessage: true, isSubmitting: false);
    }
  }
}
