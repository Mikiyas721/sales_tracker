import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sale_transaction.g.dart';

@JsonSerializable(nullable: false)
class SaleTransaction {
  final String salesPhone;
  final String shopPhone;
  final int amount;
  final DateTime timeStamp;

  SaleTransaction({
    @required this.salesPhone,
    @required this.shopPhone,
    this.amount,
    @required this.timeStamp,
  });

  factory SaleTransaction.fromJson(Map<String, dynamic> json) =>
      _$SaleTransactionFromJson(json);

  Map<String, dynamic> toJson() => _$SaleTransactionToJson(this);

}