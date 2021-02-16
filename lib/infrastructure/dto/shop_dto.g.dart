// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopDto _$ShopDtoFromJson(Map<String, dynamic> json) {
  return ShopDto(
    name: json['name'] as String,
    address: json['address'] as String,
    phoneNumber: json['phone_number'] as String,
    balance: json['balance'] as int,
  );
}

Map<String, dynamic> _$ShopDtoToJson(ShopDto instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'balance': instance.balance,
    };
