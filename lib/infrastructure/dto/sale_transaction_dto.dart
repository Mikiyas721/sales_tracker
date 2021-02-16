import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sales_tracker/infrastructure/dto/sales_person_dto.dart';
import 'package:sales_tracker/infrastructure/dto/shop_dto.dart';

part 'sale_transaction_dto.g.dart';

@JsonSerializable(nullable: false)
class SaleTransactionDto {
  final String salesPersonId;
  final String shopId;

  final ShopDto shop;
  final SalesPersonDto salesPerson;

  final int amount;
  final DateTime timeStamp;

  SaleTransactionDto({
    this.salesPersonId,
    this.shopId,
    this.shop,
    this.salesPerson,
    this.amount,
    @required this.timeStamp,
  });

  factory SaleTransactionDto.fromJson(Map<String, dynamic> json) => _$SaleTransactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SaleTransactionDtoToJson(this);
}
