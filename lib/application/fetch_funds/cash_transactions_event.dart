part of 'cash_transactions_bloc.dart';

abstract class CashTransactionsEvent extends BlocEvent<CashTransactionsState> {}

class CashTransactionsLoadingEvent extends CashTransactionsEvent {
  @override
  Stream<CashTransactionsState> handle(CashTransactionsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}
class CashTransactionsLoadingSucceededEvent extends CashTransactionsEvent {
  final List<CashTransaction> funds;

  CashTransactionsLoadingSucceededEvent(this.funds);

  @override
  Stream<CashTransactionsState> handle(CashTransactionsState currentState) async* {
    yield currentState.copyWith(isLoading:false, funds: funds);
  }
}

class CashTransactionsLoadingFailedEvent extends CashTransactionsEvent {
  final Failure loadingFailure;

  CashTransactionsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<CashTransactionsState> handle(CashTransactionsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, fetchingFundsFailure: Failure.getFailure(loadingFailure));
  }
}
