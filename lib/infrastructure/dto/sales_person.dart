import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sales_person.g.dart';

@JsonSerializable(nullable: false)
class SalesPerson {
  final String name;
  final String phoneNumber;
  final List<String> shops;

  SalesPerson({
    @required this.name,
    @required this.phoneNumber,
    this.shops,
  });

  factory SalesPerson.fromJson(Map<String, dynamic> json) =>
      _$SalesPersonFromJson(json);

  Map<String, dynamic> toJson() => _$SalesPersonToJson(this);
}
