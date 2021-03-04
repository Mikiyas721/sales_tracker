part of 'card_transactions_bloc.dart';

@freezed
abstract class CardTransactionsState extends BlocState with _$CardTransactionsState{
  const factory CardTransactionsState({
    bool isLoading,
    Option<Failure> fetchingSalesFailure,
    List<CardTransaction> sales,
  }) = _CardTransactionsState;

  factory CardTransactionsState.initial() => CardTransactionsState(
    sales: [],
    fetchingSalesFailure: none(),
    isLoading: false,
  );
}
