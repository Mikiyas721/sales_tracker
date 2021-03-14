part of 'my_shops_bloc.dart';

@freezed
abstract class MyShopsState extends BlocState with _$MyShopsState {
  const factory MyShopsState({
    bool isLoading,
    Option<Failure> myShopsLoadingFailure,
    List<Shop> shops,
    String searchWith,
  }) = _MyShopsState;

  factory MyShopsState.initial() => MyShopsState(
        shops: [],
        myShopsLoadingFailure: none(),
        isLoading: false,
        searchWith: 'name',
      );
}
