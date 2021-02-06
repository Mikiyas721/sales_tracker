import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SaleViewModel extends Equatable {
  final String phoneNumber;
  final String totalAmount;
  final String totalAmountError;
  final String paidAmount;
  final String paidAmountError;
  final bool isRegistering;

  SaleViewModel({
    @required this.phoneNumber,
    this.totalAmount,
    this.totalAmountError,
    this.paidAmount,
    this.paidAmountError,
    this.isRegistering,
  });

  @override
  List<Object> get props => [
    phoneNumber,
    totalAmount,
    totalAmountError,
    paidAmount,
    paidAmountError,
    isRegistering,
  ];
}
