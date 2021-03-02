import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/shop.dart';

part 'shop_dto.g.dart';

@JsonSerializable(nullable: false)
class ShopDto extends IdDto<Shop> implements TimeStampedDto {
  final String id;
  final String name;
  final String address;
  final String phoneNumber;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime updatedAt;
  final int balance;

  ShopDto({
    @required this.id,
    @required this.name,
    @required this.address,
    @required this.phoneNumber,
    @required this.createdAt,
    @required this.updatedAt,
    this.balance,
  });

  factory ShopDto.fromJson(Map<String, dynamic> json) =>
      _$ShopDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShopDtoToJson(this);

  Option<Shop> toDomain() {
    return Shop.create(
      id: id,
      name: name,
      address: address,
      phoneNumber: phoneNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
      balance: balance,
    );
  }

  static ShopDto fromDomain(Shop fundTransaction) {
    /// Dont we need to check if the passed object is null
    return ShopDto(
      id: fundTransaction.id,
      name: fundTransaction.name.value,
      address: fundTransaction.address.value,
      phoneNumber: fundTransaction.phoneNumber.value,
      createdAt: fundTransaction.createdAt,
      updatedAt: fundTransaction.updatedAt,
      balance: fundTransaction.balance,
    );
  }
}
