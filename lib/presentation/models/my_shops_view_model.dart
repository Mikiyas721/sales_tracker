import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class MyShopsViewModel extends Equatable {
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
