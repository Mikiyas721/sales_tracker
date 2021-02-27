part of 'fetch_funds_bloc.dart';

abstract class FetchFundsEvent extends BlocEvent<FetchFundsState> {}

class FetchingFundsEvent extends FetchFundsEvent {
  @override
  Stream<FetchFundsState> handle(FetchFundsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}
class FetchingFundsSucceededEvent extends FetchFundsEvent {
  final List<FundTransaction> funds;

  FetchingFundsSucceededEvent(this.funds);

  @override
  Stream<FetchFundsState> handle(FetchFundsState currentState) async* {
    yield currentState.copyWith(isLoading:false,hasLoaded: true, funds: funds);
  }
}

class FetchingFundsFailedEvent extends FetchFundsEvent {
  final Failure loadingFailure;

  FetchingFundsFailedEvent(this.loadingFailure);

  @override
  Stream<FetchFundsState> handle(FetchFundsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, fetchingFundsFailure: loadingFailure);
  }
}
