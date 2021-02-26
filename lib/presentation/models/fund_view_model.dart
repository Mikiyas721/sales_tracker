import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class FundViewModel extends ViewModel {
  final String amount;
  final String amountError;
  final bool isFunding;

  FundViewModel({
    this.amount,
    this.amountError,
    this.isFunding,
  });

  @override
  List<Object> get props => [
    amount,
    amountError,
    isFunding,
  ];
}
