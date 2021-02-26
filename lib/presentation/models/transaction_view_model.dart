import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class TransactionViewModel extends ViewModel {
  final String date;
  final String transactionType;
  final String soldAmount;
  final String receivedAmount;
  final String time;

  TransactionViewModel({
    @required this.date,
    @required this.transactionType,
    this.soldAmount,
    @required this.receivedAmount,
    @required this.time,
  });

  @override
  List<Object> get props =>[
    date,
    transactionType,
    soldAmount,
    receivedAmount,
    time,
  ];
}
