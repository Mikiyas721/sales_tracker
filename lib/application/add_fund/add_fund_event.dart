part of 'add_fund_bloc.dart';

abstract class AddFundEvent extends BlocEvent<AddFundState> {}

class AddFundPaidAmountChangedEvent extends AddFundEvent {
  final String paidAmount;

  AddFundPaidAmountChangedEvent(this.paidAmount);

  @override
  Stream<AddFundState> handle(
      AddFundState currentState) async* {
    yield currentState.copyWith(
        paidAmount: CashAmount.createFromString(paidAmount));
  }
}

class AddFundSubmittedEvent extends AddFundEvent {
  @override
  Stream<AddFundState> handle(
      AddFundState currentState) async* {
    yield currentState.copyWith(hasSubmitted: true);
  }
}

class AddFundRequestedEvent extends AddFundEvent {
  @override
  Stream<AddFundState> handle(
      AddFundState currentState) async* {
    yield currentState.copyWith(hasRequested: true);
  }
}

class AddFundSucceededEvent extends AddFundEvent {
  @override
  Stream<AddFundState> handle(
      AddFundState currentState) async* {
    yield currentState.copyWith(
      paidAmount: null,
      fundTransactionFailure: null,
      hasRequested: false,
      hasSubmitted: false,
      requestCompleted: true,
    );
  }
}

class AddFundFailedEvent extends AddFundEvent {
  final Failure saleTransactionFailure;

  AddFundFailedEvent(this.saleTransactionFailure);

  @override
  Stream<AddFundState> handle(
      AddFundState currentState) async* {
    yield currentState.copyWith(
      fundTransactionFailure: saleTransactionFailure,
      hasRequested: false,
    );
  }
}
