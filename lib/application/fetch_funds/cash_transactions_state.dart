part of 'cash_transactions_bloc.dart';

@freezed
abstract class CashTransactionsState extends BlocState with _$CashTransactionsState {
  const factory CashTransactionsState({
    bool isLoading,
    Option<Failure> fetchingFundsFailure,
    List<CashTransaction> funds,
  }) = _CashTransactionsState;

  factory CashTransactionsState.initial() => CashTransactionsState(
        funds: [],
        fetchingFundsFailure: none(),
        isLoading: false,
      );
}
