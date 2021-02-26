part of 'sale_transaction_bloc.dart';

@freezed
abstract class SaleTransactionState extends BlocState
    with _$SaleTransactionState {
  const factory SaleTransactionState({
    Either<CardAmountFailure, CardAmount> totalAmount,
    Either<CashAmountFailure, CashAmount> paidAmount,
    Failure saleTransactionFailure,
    bool hasSubmitted,
    bool hasRequested,
    bool requestCompleted,
  }) = _SaleTransactionState;

  factory SaleTransactionState.initial() => SaleTransactionState(
        totalAmount: null,
        paidAmount: null,
        saleTransactionFailure: null,
        hasRequested: false,
        hasSubmitted: false,
        requestCompleted: false,
      );
}
