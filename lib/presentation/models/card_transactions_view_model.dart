import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class CardTransactionsViewModel extends SimpleListViewModel<CardTransactionViewModel> {
  CardTransactionsViewModel({
    List<CardTransactionViewModel> list,
    bool hasLoaded,
    String loadingError,
    bool isLoading,
  }) : super(isLoading: isLoading,data: list,error: loadingError);
}
class CardTransactionViewModel extends ViewModel {
  final String date;
  final String amount;
  final String time;

  CardTransactionViewModel({
    @required this.date,
    this.amount,
    @required this.time,
  });

  @override
  List<Object> get props =>[
    date,
    amount,
    time,
  ];
}
