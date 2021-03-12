// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopDto _$ShopDtoFromJson(Map<String, dynamic> json) {
  return ShopDto(
    id: json['id'] as String,
    name: json['name'] as String,
    address: json['address'] as String,
    phoneNumber: json['phoneNumber'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    balance: json['balance'] as int,
  );
}

Map<String, dynamic> _$ShopDtoToJson(ShopDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['address'] = instance.address;
  val['phoneNumber'] = instance.phoneNumber;
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  val['balance'] = instance.balance;
  return val;
}
