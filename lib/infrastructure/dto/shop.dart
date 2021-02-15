import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shop.g.dart';

class Shop {
  final String name;
  final String address;
  final String phoneNumber;
  final int balance;

  Shop({
    @required this.name,
    @required this.address,
    @required this.phoneNumber,
    this.balance,
  });


  factory Shop.fromJson(Map<String, dynamic> json) =>
      _$ShopFromJson(json);

  Map<String, dynamic> toJson() => _$ShopToJson(this);
}
