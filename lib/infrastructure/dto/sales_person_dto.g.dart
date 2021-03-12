// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesPersonDto _$SalesPersonDtoFromJson(Map<String, dynamic> json) {
  return SalesPersonDto(
    id: json['id'] as String,
    name: json['name'] as String,
    phoneNumber: json['phoneNumber'] as String,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    shops: (json['shops'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$SalesPersonDtoToJson(SalesPersonDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['phoneNumber'] = instance.phoneNumber;
  writeNotNull('shops', instance.shops);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}
