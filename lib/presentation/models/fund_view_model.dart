import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/common/view_model.dart';

class FundViewModel extends ViewModel {
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
