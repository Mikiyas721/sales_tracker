part of 'sale_transaction_bloc.dart';

abstract class SaleTransactionEvent extends BlocEvent<SaleTransactionState> {}

class SaleTransactionTotalAmountChangedEvent extends SaleTransactionEvent {
  final String totalAmount;

  SaleTransactionTotalAmountChangedEvent(this.totalAmount);

  @override
  Stream<SaleTransactionState> handle(
      SaleTransactionState currentState) async* {
    yield currentState.copyWith(
        totalAmount: CardAmount.createFromString(totalAmount));
  }
}

class SaleTransactionPaidAmountChangedEvent extends SaleTransactionEvent {
  final String paidAmount;

  SaleTransactionPaidAmountChangedEvent(this.paidAmount);

  @override
  Stream<SaleTransactionState> handle(
      SaleTransactionState currentState) async* {
    yield currentState.copyWith(
        paidAmount: CashAmount.createFromString(paidAmount));
  }
}

class SaleTransactionSubmittedEvent extends SaleTransactionEvent {
  @override
  Stream<SaleTransactionState> handle(
      SaleTransactionState currentState) async* {
    yield currentState.copyWith(hasSubmitted: true);
  }
}

class SaleTransactionRequestedEvent extends SaleTransactionEvent {
  @override
  Stream<SaleTransactionState> handle(
      SaleTransactionState currentState) async* {
    yield currentState.copyWith(hasRequested: true);
  }
}

class SaleTransactionSucceededEvent extends SaleTransactionEvent {
  @override
  Stream<SaleTransactionState> handle(
      SaleTransactionState currentState) async* {
    yield currentState.copyWith(
      totalAmount: null,
      paidAmount: null,
      saleTransactionFailure: null,
      hasRequested: false,
      hasSubmitted: false,
      requestCompleted: true,
    );
  }
}

class SaleTransactionFailedEvent extends SaleTransactionEvent {
  final Failure saleTransactionFailure;

  SaleTransactionFailedEvent(this.saleTransactionFailure);

  @override
  Stream<SaleTransactionState> handle(
      SaleTransactionState currentState) async* {
    yield currentState.copyWith(
      saleTransactionFailure: saleTransactionFailure,
      hasRequested: false,
    );
  }
}
