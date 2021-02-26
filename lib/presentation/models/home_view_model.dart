import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class HomeViewModel extends ViewModel {
  final String soldToday;
  final String remainingLoan;

  HomeViewModel({@required this.soldToday, @required this.remainingLoan});

  @override
  List<Object> get props => [
    soldToday,
    remainingLoan,
  ];
}
