// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaleTransactionDto _$SaleTransactionDtoFromJson(Map<String, dynamic> json) {
  return SaleTransactionDto(
    salesPersonId: json['salesPersonId'] as String,
    shopId: json['shopId'] as String,
    shop: ShopDto.fromJson(json['shop'] as Map<String, dynamic>),
    salesPerson:
        SalesPersonDto.fromJson(json['salesPerson'] as Map<String, dynamic>),
    amount: json['amount'] as int,
    timeStamp: DateTime.parse(json['timeStamp'] as String),
  );
}

Map<String, dynamic> _$SaleTransactionDtoToJson(SaleTransactionDto instance) =>
    <String, dynamic>{
      'salesPersonId': instance.salesPersonId,
      'shopId': instance.shopId,
      'shop': instance.shop,
      'salesPerson': instance.salesPerson,
      'amount': instance.amount,
      'timeStamp': instance.timeStamp.toIso8601String(),
    };
