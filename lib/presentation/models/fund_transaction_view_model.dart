import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class FundTransactionsViewModel extends SimpleListViewModel<FundTransactionViewModel> {
  FundTransactionsViewModel({
    List<FundTransactionViewModel> list,
    String loadingError,
    bool isLoading,
  }) : super(isLoading: isLoading,data: list,error: loadingError);
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
