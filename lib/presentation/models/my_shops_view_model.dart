import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class MyShopsViewModel extends ViewModel {
  final String name;
  final String phoneNumber;
  final String location;

  MyShopsViewModel({
    @required this.name,
    @required this.phoneNumber,
    @required this.location,
  });

  @override
  List<Object> get props => [
    name,
    phoneNumber,
    location,
  ];
}
