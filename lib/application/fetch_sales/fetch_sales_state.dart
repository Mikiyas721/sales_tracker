part of 'fetch_sales_bloc.dart';

@freezed
abstract class FetchSalesState extends BlocState with _$FetchSalesState{
  const factory FetchSalesState({
    bool isLoading,
    bool hasLoaded,
    Failure fetchingSalesFailure,
    List<SaleTransaction> sales,
  }) = _FetchSalesState;

  factory FetchSalesState.initial() => FetchSalesState(
    sales: null,
    fetchingSalesFailure: null,
    isLoading: false,
    hasLoaded: false,
  );
}
