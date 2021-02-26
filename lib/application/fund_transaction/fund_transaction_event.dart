part of 'fund_transaction_bloc.dart';

abstract class FundTransactionEvent extends BlocEvent<FundTransactionState> {}

class FundTransactionPaidAmountChangedEvent extends FundTransactionEvent {
  final String paidAmount;

  FundTransactionPaidAmountChangedEvent(this.paidAmount);

  @override
  Stream<FundTransactionState> handle(
      FundTransactionState currentState) async* {
    yield currentState.copyWith(
        paidAmount: CashAmount.createFromString(paidAmount));
  }
}

class FundTransactionSubmittedEvent extends FundTransactionEvent {
  @override
  Stream<FundTransactionState> handle(
      FundTransactionState currentState) async* {
    yield currentState.copyWith(hasSubmitted: true);
  }
}

class FundTransactionRequestedEvent extends FundTransactionEvent {
  @override
  Stream<FundTransactionState> handle(
      FundTransactionState currentState) async* {
    yield currentState.copyWith(hasRequested: true);
  }
}

class FundTransactionSucceededEvent extends FundTransactionEvent {
  @override
  Stream<FundTransactionState> handle(
      FundTransactionState currentState) async* {
    yield currentState.copyWith(
      paidAmount: null,
      fundTransactionFailure: null,
      hasRequested: false,
      hasSubmitted: false,
      requestCompleted: true,
    );
  }
}

class FundTransactionFailedEvent extends FundTransactionEvent {
  final Failure saleTransactionFailure;

  FundTransactionFailedEvent(this.saleTransactionFailure);

  @override
  Stream<FundTransactionState> handle(
      FundTransactionState currentState) async* {
    yield currentState.copyWith(
      fundTransactionFailure: saleTransactionFailure,
      hasRequested: false,
    );
  }
}
