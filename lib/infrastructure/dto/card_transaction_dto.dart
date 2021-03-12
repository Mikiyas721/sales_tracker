import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/infrastructure/dto/sales_person_dto.dart';
import 'package:sales_tracker/infrastructure/dto/shop_dto.dart';

part 'card_transaction_dto.g.dart';

@JsonSerializable(nullable: false)
class CardTransactionDto extends IdDto<CardTransaction> implements TimeStampedDto {
  @JsonKey(nullable: true,includeIfNull: false) final String id;
  final String salesPersonId;
  final String shopId;

  @JsonKey(nullable: true,includeIfNull: false) final ShopDto shop;
  @JsonKey(nullable: true,includeIfNull: false) final SalesPersonDto salesPerson;

  final int amount;
  @JsonKey(nullable: true,includeIfNull: false) final DateTime createdAt;
  @JsonKey(nullable: true,includeIfNull: false) final DateTime updatedAt;

  CardTransactionDto({
    @required this.id,
    @required this.salesPersonId,
    @required this.shopId,
    @required this.amount,
    @required this.createdAt,
    @required this.updatedAt,
    this.shop,
    this.salesPerson,
  });

  factory CardTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$CardTransactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CardTransactionDtoToJson(this);

  Option<CardTransaction> toDomain(){
    return CardTransaction.create(
        id:id,
        salesPersonId:salesPersonId,
        shopId:shopId,
        shop:shop?.toDomain()??none(),
        salesPerson:salesPerson?.toDomain()??none(),
        amount:amount,
        createdAt:createdAt,
        updatedAt:updatedAt,
    );
  }

  static CardTransactionDto fromDomain(CardTransaction cardTransaction){
    print('${cardTransaction.id}|${cardTransaction.salesPersonId}|${cardTransaction.shopId}|${cardTransaction.amount.value}');
    return CardTransactionDto(
        id:cardTransaction.id,
        salesPersonId:cardTransaction.salesPersonId,
        shopId:cardTransaction.shopId,
        amount:cardTransaction.amount.value,
        createdAt:cardTransaction.createdAt,
        updatedAt:cardTransaction.updatedAt,
    );
  }
}
