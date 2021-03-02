import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class SaleTransactionsViewModel<SaleTransactionViewModel> extends SimpleListViewModel<SaleTransactionViewModel> {
  SaleTransactionsViewModel({
    List<SaleTransactionViewModel> list,
    bool hasLoaded,
    String loadingError,
    bool isLoading,
  }) : super(
      list: list,
      hasLoaded: hasLoaded,
      loadingError: loadingError,
      isLoading: isLoading);
}
class SaleTransactionViewModel extends ViewModel {
  final String date;
  final String soldAmount;
  final String receivedAmount;
  final String time;

  SaleTransactionViewModel({
    @required this.date,
    this.soldAmount,
    @required this.receivedAmount,
    @required this.time,
  });

  @override
  List<Object> get props =>[
    date,
    soldAmount,
    receivedAmount,
    time,
  ];
}
