import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class SaleViewModel extends ViewModel {
  final String totalAmount;
  final String totalAmountError;
  final String paidAmount;
  final String paidAmountError;
  final bool isRegistering;

  SaleViewModel({
    this.totalAmount,
    this.totalAmountError,
    this.paidAmount,
    this.paidAmountError,
    this.isRegistering,
  });

  @override
  List<Object> get props => [
    totalAmount,
    totalAmountError,
    paidAmount,
    paidAmountError,
    isRegistering,
  ];
}
