import 'package:dartz/dartz.dart';
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
      yield PhoneNumber.create(phoneNumber.phoneNumber);
    }, submitPhoneNumber: (SubmitPhoneNumber submitPhoneNumber) async* {
      yield* _performActionRequestCode(_iFirebaseRepo.requestCode);
    });
  }

  Stream<LoginState> _performActionRequestCode(
      void Function(PhoneNumber phoneNumber) requestCall) async* {
    state.phoneNumber.fold((l) async* {
      yield state.copyWith(showErrorMessage: true);
    }, (r) async* {
      yield state.copyWith(isRequesting:true);
      requestCall(r);
      yield state.copyWith(isRequesting:false, hasRequested:true);
    });
  }
}
