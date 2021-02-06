import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends Equatable {
  final String soldToday;
  final String remainingLoan;

  HomeViewModel({@required this.soldToday, @required this.remainingLoan});

  @override
  List<Object> get props => [
    soldToday,
    remainingLoan,
  ];
}
