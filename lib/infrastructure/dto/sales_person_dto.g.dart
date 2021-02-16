// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesPersonDto _$SalesPersonDtoFromJson(Map<String, dynamic> json) {
  return SalesPersonDto(
    name: json['name'] as String,
    phoneNumber: json['phoneNumber'] as String,
    shops: (json['shops'] as List).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SalesPersonDtoToJson(SalesPersonDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'shops': instance.shops,
    };
