part of 'fetch_sales_bloc.dart';

abstract class FetchSalesEvent extends BlocEvent<FetchSalesState> {}

class FetchingSalesEvent extends FetchSalesEvent {
  @override
  Stream<FetchSalesState> handle(FetchSalesState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}
class FetchingSalesSucceededEvent extends FetchSalesEvent {
  final List<SaleTransaction> sales;

  FetchingSalesSucceededEvent(this.sales);

  @override
  Stream<FetchSalesState> handle(FetchSalesState currentState) async* {
    yield currentState.copyWith(isLoading:false,hasLoaded: true, sales: sales);
  }
}

class FetchingSalesFailedEvent extends FetchSalesEvent {
  final Failure loadingFailure;

  FetchingSalesFailedEvent(this.loadingFailure);

  @override
  Stream<FetchSalesState> handle(FetchSalesState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, fetchingSalesFailure: loadingFailure);
  }
}

