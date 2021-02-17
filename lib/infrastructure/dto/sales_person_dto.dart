import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';

part 'sales_person_dto.g.dart';

@JsonSerializable(nullable: false)
class SalesPersonDto extends IdDto implements TimeStampedDto {
  final String id;
  final String name;
  final String phoneNumber;
  final List<String> shops;

  /// Should it also include list of ShopDtos
  @JsonKey(nullable: true, includeIfNull: false) final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false) final DateTime updatedAt;

  SalesPersonDto({
    @required this.id,
    @required this.name,
    @required this.phoneNumber,
    @required this.updatedAt,
    @required this.createdAt,
    this.shops,
  });

  factory SalesPersonDto.fromJson(Map<String, dynamic> json) =>
      _$SalesPersonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SalesPersonDtoToJson(this);

  Option<SalesPerson> toDomain() {
    return SalesPerson.create(
        id:id,
        name:name,
        phoneNumber:phoneNumber,
        shops:shops,
        createdAt:createdAt,
        updatedAt:updatedAt,
    );
  }

  static SalesPersonDto fromDomain(SalesPerson salesPerson) {
    return SalesPersonDto(
      id: salesPerson.id,
      name: salesPerson.name.value,
      phoneNumber: salesPerson.phoneNumber.value,
      createdAt: salesPerson.createdAt,
      updatedAt: salesPerson.updatedAt,
    );
  }
}
