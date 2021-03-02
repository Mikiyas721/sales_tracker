part of 'splash_bloc.dart';

@freezed
abstract class SplashState extends BlocState with _$SplashState {
  const factory SplashState({
    Option<User> user,
  }) = _SplashState;

  factory SplashState.initial() => SplashState(user: none());
}
