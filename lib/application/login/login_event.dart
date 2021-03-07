part of '../login/login_bloc.dart';

abstract class LoginEvent extends BlocEvent<LoginState> {}

class LoginPhoneNumberChangedEvent extends LoginEvent {
  final String phoneNumber;

  LoginPhoneNumberChangedEvent(this.phoneNumber);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
        phoneNumber: PhoneNumber.create(phoneNumber));
  }
}

class LoginSubmittedEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(hasSubmitted: true);
  }
}

class LoginRequestEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(isRequesting: true);
  }
}

class LoginRequestSucceededEvent extends LoginEvent {
  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
      hasRequested: true, loginRequestFailure: none(),);
  }
}

class LoginRequestFailedEvent extends LoginEvent {
  final Failure requestFailure;

  LoginRequestFailedEvent(this.requestFailure);

  @override
  Stream<LoginState> handle(LoginState currentState) async* {
    yield currentState.copyWith(
        isRequesting: false,
        loginRequestFailure: Failure.getFailure(requestFailure));
  }
}
