import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class FundViewModel extends Equatable {
  final String phoneNumber;
  final String amount;
  final String amountError;
  final bool isFunding;

  FundViewModel({
    @required this.phoneNumber,
    this.amount,
    this.amountError,
    this.isFunding,
  });

  @override
  List<Object> get props => [
    phoneNumber,
    amount,
    amountError,
    isFunding,
  ];
}
