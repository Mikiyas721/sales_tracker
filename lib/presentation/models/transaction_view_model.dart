import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TransactionViewModel extends Equatable {
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
