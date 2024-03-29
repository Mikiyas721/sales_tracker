part of 'add_sale_bloc.dart';

abstract class AddSaleEvent extends BlocEvent<AddSaleState> {}

class AddSaleTotalAmountChangedEvent extends AddSaleEvent {
  final String totalAmount;

  AddSaleTotalAmountChangedEvent(this.totalAmount);

  @override
  Stream<AddSaleState> handle(
      AddSaleState currentState) async* {
    yield currentState.copyWith(
        totalAmount: CardAmount.createFromString(totalAmount));
  }
}

class AddSalePaidAmountChangedEvent extends AddSaleEvent {
  final String paidAmount;

  AddSalePaidAmountChangedEvent(this.paidAmount);

  @override
  Stream<AddSaleState> handle(
      AddSaleState currentState) async* {
    yield currentState.copyWith(
        paidAmount: CashAmount.createFromStringForSale(paidAmount));
  }
}

class AddSaleSubmittedEvent extends AddSaleEvent {
  @override
  Stream<AddSaleState> handle(
      AddSaleState currentState) async* {
    yield currentState.copyWith(hasSubmitted: true);
  }
}

class AddSaleRequestedEvent extends AddSaleEvent {
  @override
  Stream<AddSaleState> handle(
      AddSaleState currentState) async* {
    yield currentState.copyWith(hasRequested: true);
  }
}

class AddSaleSucceededEvent extends AddSaleEvent {
  @override
  Stream<AddSaleState> handle(
      AddSaleState currentState) async* {
    yield currentState.copyWith(
      totalAmount: CardAmount.createFromNum(0),
      paidAmount: CashAmount.createFromNumForSale(0),
      saleTransactionFailure: none(),
      hasRequested: false,
      hasSubmitted: false,
      requestCompleted: true,
    );
  }
}

class AddSaleFailedEvent extends AddSaleEvent {
  final Failure saleTransactionFailure;

  AddSaleFailedEvent(this.saleTransactionFailure);

  @override
  Stream<AddSaleState> handle(
      AddSaleState currentState) async* {
    yield currentState.copyWith(
      saleTransactionFailure: Failure.getFailure(saleTransactionFailure),
      hasRequested: false,
    );
  }
}
