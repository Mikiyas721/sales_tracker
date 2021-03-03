part of 'add_sale_bloc.dart';

@freezed
abstract class AddSaleState extends BlocState
    with _$AddSaleState {
  const factory AddSaleState({
    Either<CardAmountFailure, CardAmount> totalAmount,
    Either<CashAmountFailure, CashAmount> paidAmount,
    Failure saleTransactionFailure,
    bool hasSubmitted,
    bool hasRequested,
    bool requestCompleted,
  }) = _AddSaleState;

  factory AddSaleState.initial() => AddSaleState(
        totalAmount: CardAmount.createFromNum(0),
        paidAmount:  CashAmount.createFromNum(0),
        saleTransactionFailure: null,
        hasRequested: false,
        hasSubmitted: false,
        requestCompleted: false,
      );
}
