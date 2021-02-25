part of 'my_shops_bloc.dart';

@immutable
@freezed
abstract class MyShopsState with _$MyShopsState {
  const factory MyShopsState({bool isLoading,Either<Failure,List<Shop>> shops}) = _MyShopsState;
  factory MyShopsState.initial() => MyShopsState(shops: null,isLoading: false);
}
