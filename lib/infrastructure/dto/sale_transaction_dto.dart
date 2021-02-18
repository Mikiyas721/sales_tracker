import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/sell_transaction.dart';
import 'package:sales_tracker/infrastructure/dto/sales_person_dto.dart';
import 'package:sales_tracker/infrastructure/dto/shop_dto.dart';

part 'sale_transaction_dto.g.dart';

@JsonSerializable(nullable: false)
class SaleTransactionDto extends IdDto implements TimeStampedDto {
  final String id;
  final String salesPersonId;
  final String shopId;

  @JsonKey(nullable: true,includeIfNull: false) final ShopDto shop;
  @JsonKey(nullable: true,includeIfNull: false) final SalesPersonDto salesPerson;

  final int soldAmount;
  final double receivedAmount;
  @JsonKey(nullable: true,includeIfNull: false) final DateTime createdAt;
  @JsonKey(nullable: true,includeIfNull: false) final DateTime updatedAt;

  SaleTransactionDto({
    @required this.id,
    @required this.salesPersonId,
    @required this.shopId,
    @required this.soldAmount,
    @required this.receivedAmount,
    @required this.createdAt,
    @required this.updatedAt,
    this.shop,
    this.salesPerson,
  });

  factory SaleTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$SaleTransactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SaleTransactionDtoToJson(this);

  Option<SaleTransaction> toDomain(){
    return SaleTransaction.create(
        id:id,
        salesPersonId:salesPersonId,
        shopId:shopId,
        shop:shop?.toDomain()??none(),
        salesPerson:salesPerson?.toDomain()??none(),
        soldAmount:soldAmount,
        receivedAmount:receivedAmount,
        createdAt:createdAt,
        updatedAt:updatedAt,
    );
  }
  static SaleTransactionDto fromDomain(SaleTransaction salesTransaction){
    return SaleTransactionDto(
        id:salesTransaction.id,
        salesPersonId:salesTransaction.salesPersonId,
        shopId:salesTransaction.shopId,
        soldAmount:salesTransaction.soldAmount.value,
        receivedAmount:salesTransaction.receivedAmount.value,
        createdAt:salesTransaction.createdAt,
        updatedAt:salesTransaction.updatedAt,
    );
  }
}
