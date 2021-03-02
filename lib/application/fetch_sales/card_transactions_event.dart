part of 'card_transactions_bloc.dart';

abstract class CardTransactionsEvent extends BlocEvent<CardTransactionsState> {}

class CardTransactionsLoadingEvent extends CardTransactionsEvent {
  @override
  Stream<CardTransactionsState> handle(CardTransactionsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}
class CardTransactionsLoadingSucceededEvent extends CardTransactionsEvent {
  final List<CardTransaction> sales;

  CardTransactionsLoadingSucceededEvent(this.sales);

  @override
  Stream<CardTransactionsState> handle(CardTransactionsState currentState) async* {
    yield currentState.copyWith(isLoading:false, sales: sales);
  }
}

class CardTransactionsLoadingFailedEvent extends CardTransactionsEvent {
  final Failure loadingFailure;

  CardTransactionsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<CardTransactionsState> handle(CardTransactionsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, fetchingSalesFailure: loadingFailure);
  }
}

