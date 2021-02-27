import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class FundTransactionsViewModel<FundTransactionViewModel> extends ListViewModel {
  FundTransactionsViewModel({
    List<FundTransactionViewModel> list,
    bool hasLoaded,
    String loadingError,
    bool isLoading,
  }) : super(
      list: list,
      hasLoaded: hasLoaded,
      loadingError: loadingError,
      isLoading: isLoading);
}
class FundTransactionViewModel extends ViewModel {
  final String date;
  final String amount;
  final String time;

  FundTransactionViewModel({
    @required this.date,
    @required this.amount,
    @required this.time,
  });

  @override
  List<Object> get props =>[
    date,
    amount,
    time,
  ];
}
