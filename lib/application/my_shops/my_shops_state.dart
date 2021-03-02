part of 'my_shops_bloc.dart';

@freezed
abstract class MyShopsState extends BlocState with _$MyShopsState {
  const factory MyShopsState({
    bool isLoading,
    Failure myShopsLoadingFailure,
    List<Shop> shops,
  }) = _MyShopsState;

  factory MyShopsState.initial() => MyShopsState(
        shops: null,
        myShopsLoadingFailure: null,
        isLoading: false,
      );
}
