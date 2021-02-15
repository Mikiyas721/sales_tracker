import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fund_transaction.g.dart';

@JsonSerializable(nullable: false)
class FundTransaction {
  final String salesPhone;
  final String shopPhone;
  final int amount;
  final DateTime timeStamp;

  FundTransaction({
    @required this.salesPhone,
    @required this.shopPhone,
    this.amount,
    @required this.timeStamp,
  });

  factory FundTransaction.fromJson(Map<String, dynamic> json) =>
      _$FundTransactionFromJson(json);

  Map<String, dynamic> toJson() => _$FundTransactionToJson(this);
}
