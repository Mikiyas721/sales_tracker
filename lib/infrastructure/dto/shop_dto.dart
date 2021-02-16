import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sales_tracker/domain/entities/shop.dart';

part 'shop_dto.g.dart';

@JsonSerializable(nullable: false)
class ShopDto {
  final String name;
  final String address;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  final int balance;

  ShopDto({
    @required this.name,
    @required this.address,
    @required this.phoneNumber,
    this.balance,
  });

  factory ShopDto.fromJson(Map<String, dynamic> json) => _$ShopDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShopDtoToJson(this);


  Option<Shop> toDomain(){
    //todo implement this
  }

  static Shop fromDomain(Shop fundTransaction){
    //todo implement this
  }
}
