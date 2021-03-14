part of 'my_shops_bloc.dart';

abstract class MyShopsEvent extends BlocEvent<MyShopsState> {}

class MyShopsLoadingEvent extends MyShopsEvent {
  @override
  Stream<MyShopsState> handle(MyShopsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}
class MyShopsSearchWithChangedEvent extends MyShopsEvent {
  final String searchWith;
  MyShopsSearchWithChangedEvent(this.searchWith);
  @override
  Stream<MyShopsState> handle(MyShopsState currentState) async* {
    yield currentState.copyWith(searchWith: searchWith);
  }
}

class MyShopsLoadingSucceededEvent extends MyShopsEvent {
  final List<Shop> shops;

  MyShopsLoadingSucceededEvent(this.shops);

  @override
  Stream<MyShopsState> handle(MyShopsState currentState) async* {
    yield currentState.copyWith(
      isLoading: false,
      shops: shops,
      myShopsLoadingFailure: none(),
    );
  }
}

class MyShopsLoadingFailedEvent extends MyShopsEvent {
  final Failure loadingFailure;

  MyShopsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<MyShopsState> handle(MyShopsState currentState) async* {
    yield currentState.copyWith(
      isLoading: false,
      myShopsLoadingFailure: Failure.getFailure(loadingFailure),
    );
  }
}
