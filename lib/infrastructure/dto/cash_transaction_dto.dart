import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/infrastructure/dto/sales_person_dto.dart';
import 'package:sales_tracker/infrastructure/dto/shop_dto.dart';

part 'cash_transaction_dto.g.dart';

@JsonSerializable(nullable: false)
class CashTransactionDto extends IdDto<CashTransaction> implements TimeStampedDto {
  @JsonKey(nullable: true,includeIfNull: false) final String id;
  final String salesPersonId;
  final String shopId;

  @JsonKey(nullable: true, includeIfNull: false) final ShopDto shop;
  @JsonKey(nullable: true, includeIfNull: false) final SalesPersonDto salesPerson;

  final double amount; /// why not use cash amount?
  @JsonKey(nullable: true, includeIfNull: false) final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false) final DateTime updatedAt;

  CashTransactionDto({
    @required this.id,
    @required this.salesPersonId,
    @required this.shopId,
    @required this.amount,
    @required this.createdAt,///why required if it can be null??
    @required this.updatedAt,
    this.shop,
    this.salesPerson,
  });

  factory CashTransactionDto.fromJson(Map<String, dynamic> json) => _$CashTransactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CashTransactionDtoToJson(this);

  Option<CashTransaction> toDomain() {
    return CashTransaction.create(
      id: id,
      salesPersonId: salesPersonId,
      shopId: shopId,
      shop: shop?.toDomain() ?? none(),
      salesPerson: salesPerson?.toDomain() ?? none(),
      amount: amount,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static CashTransactionDto fromDomain(CashTransaction cashTransaction) {
    print('${cashTransaction.id}|${cashTransaction.salesPersonId}|${cashTransaction.shopId}|${cashTransaction.amount.value}');
    return CashTransactionDto(
      id: cashTransaction.id,
      salesPersonId: cashTransaction.salesPersonId,
      shopId: cashTransaction.shopId,
      amount: cashTransaction.amount.value,
      createdAt: cashTransaction.createdAt,
      updatedAt: cashTransaction.updatedAt,
    );
  }
}
