part of 'fund_transaction_bloc.dart';

@immutable
@freezed
abstract class FundTransactionState extends BlocState with _$FundTransactionState{
  const factory FundTransactionState({
    Either<CashAmountFailure, CashAmount> paidAmount,
    Failure fundTransactionFailure,
    bool hasSubmitted,
    bool hasRequested,
    bool requestCompleted,
}) = _FundTransactionState;

  factory FundTransactionState.initial() => FundTransactionState(
    paidAmount: null,
    fundTransactionFailure: null,
    hasRequested: false,
    hasSubmitted: false,
    requestCompleted: false,
  );
}
