part of 'card_transactions_bloc.dart';

@freezed
abstract class CardTransactionsState extends BlocState with _$CardTransactionsState{
  const factory CardTransactionsState({
    bool isLoading,
    Failure fetchingSalesFailure,
    List<CardTransaction> sales,
  }) = _CardTransactionsState;

  factory CardTransactionsState.initial() => CardTransactionsState(
    sales: null,
    fetchingSalesFailure: null,
    isLoading: false,
  );
}
