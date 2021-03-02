import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class CashTransactionsViewModel extends SimpleListViewModel<CashTransactionViewModel> {
  CashTransactionsViewModel({
    List<CashTransactionViewModel> list,
    String loadingError,
    bool isLoading,
  }) : super(isLoading: isLoading,data: list,error: loadingError);
}
class CashTransactionViewModel extends ViewModel {
  final String date;
  final String amount;
  final String time;

  CashTransactionViewModel({
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
