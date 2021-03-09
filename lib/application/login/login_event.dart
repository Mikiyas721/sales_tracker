part of '../login/login_bloc.dart';

abstract class LoginEvent extends BlocEvent<LoginState> {}

class LoginPhoneNumberChangedEvent extends LoginEvent {
  final String phoneNumber;

  LoginPhoneNumberChangedEvent(this.phoneNumber);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(phoneNumber: PhoneNumber.create(phoneNumber));
  }
}

class LoginVerificationCodeChangedEvent extends LoginEvent {
  final String code;

  LoginVerificationCodeChangedEvent(this.code);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(verificationCode: VerificationCode.createFromString(code));
  }
}
class LoginFetchedSalesPersonEvent extends LoginEvent {
  final Option<SalesPerson> salesperson;

  LoginFetchedSalesPersonEvent(this.salesperson);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(fetchedSalesPerson: salesperson);
  }
}
class LoginPhoneNumberSubmittedEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(hasSubmittedPhoneNumber: true);
  }
}

class LoginVerificationCodeRequestedEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(isRequestingCode: true);
  }
}

class LoginAutoRetrievalTimedOutEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(isVerificationView: true);
  }
}

class LoginWrongNumberEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      phoneNumber: PhoneNumber.create(""),
      verificationCode: VerificationCode.createFromString(""),
      fetchedSalesPerson:none(),
      codeRequestFailure: none(),
      verificationFailure: none(),
      hasSubmittedPhoneNumber: false,
      isRequestingCode: false,
      hasSubmittedCode: false,
      isVerifyingCode: false,
      isVerificationView: false,
    );
  }
}

class LoginVerificationCodeRequestSucceededEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      codeRequestFailure: none(),
    );
  }
}

class LoginVerificationCodeRequestFailedEvent extends LoginEvent {
  final Failure requestFailure;

  LoginVerificationCodeRequestFailedEvent(this.requestFailure);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
        isRequestingCode: false,
        codeRequestFailure: Failure.getFailure(requestFailure));
  }
}

class LoginVerificationCodeSubmittedEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(hasSubmittedCode: true);
  }
}

class LoginVerifyingCodeEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(isVerifyingCode: true);
  }
}

class LoginVerifyingCodeSucceededEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      verificationFailure: none(),
    );
  }
}

class LoginVerifyingCodeFailedEvent extends LoginEvent {
  final Failure requestFailure;

  LoginVerifyingCodeFailedEvent(this.requestFailure);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
        isVerifyingCode: false,
        isRequestingCode:false,
        verificationFailure: Failure.getFailure(requestFailure));
  }
}
