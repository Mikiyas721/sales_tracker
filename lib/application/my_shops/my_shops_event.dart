part of 'my_shops_bloc.dart';

abstract class MyShopsEvent extends BlocEvent<MyShopsState> {}

class MyShopsLoadingEvent extends MyShopsEvent {
  @override
  Stream<MyShopsState> handle(MyShopsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class MyShopsLoadingSucceededEvent extends MyShopsEvent {
  final List<Shop> shops;

  MyShopsLoadingSucceededEvent(this.shops);

  @override
  Stream<MyShopsState> handle(MyShopsState currentState) async* {
    yield currentState.copyWith(isLoading:false,hasLoaded: true, shops: shops);
  }
}

class MyShopsLoadingFailedEvent extends MyShopsEvent {
  final Failure loadingFailure;

  MyShopsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<MyShopsState> handle(MyShopsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, myShopsLoadingFailure: loadingFailure);
  }
}