part of 'splash_bloc.dart';

abstract class SplashEvent extends BlocEvent<SplashState> {}

class UserChangedSplashEvent extends SplashEvent {
  final Option<User> user;

  UserChangedSplashEvent(this.user);

  @override
  Stream<SplashState> handle(SplashState currentState) async* {
    yield currentState.copyWith(user: user);
  }
}
