part of 'cash_transactions_bloc.dart';

@freezed
abstract class CashTransactionsState extends BlocState with _$CashTransactionsState {
  const factory CashTransactionsState({
    bool isLoading,
    Failure fetchingFundsFailure,
    List<CashTransaction> funds,
  }) = _CashTransactionsState;

  factory CashTransactionsState.initial() => CashTransactionsState(
        funds: null,
        fetchingFundsFailure: null,
        isLoading: false,
      );
}
