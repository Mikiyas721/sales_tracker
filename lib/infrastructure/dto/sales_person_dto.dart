import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';

part 'sales_person_dto.g.dart';

@JsonSerializable(nullable: false)
class SalesPersonDto {
  final String name;
  final String phoneNumber;
  final List<String> shops;

  SalesPersonDto({
    @required this.name,
    @required this.phoneNumber,
    this.shops,
  });

  factory SalesPersonDto.fromJson(Map<String, dynamic> json) =>
      _$SalesPersonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SalesPersonDtoToJson(this);

  Option<SalesPerson> toDomain(){
    //todo implement this
  }

  static SalesPerson fromDomain(SalesPerson fundTransaction){
    //todo implement this
  }
}
