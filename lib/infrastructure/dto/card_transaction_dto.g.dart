// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardTransactionDto _$CardTransactionDtoFromJson(Map<String, dynamic> json) {
  return CardTransactionDto(
    id: json['id'] as String,
    salesPersonId: json['salesPersonId'] as String,
    shopId: json['shopId'] as String,
    amount: json['amount'] as int,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    shop: json['shop'] == null
        ? null
        : ShopDto.fromJson(json['shop'] as Map<String, dynamic>),
    salesPerson: json['salesPerson'] == null
        ? null
        : SalesPersonDto.fromJson(json['salesPerson'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CardTransactionDtoToJson(CardTransactionDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['salesPersonId'] = instance.salesPersonId;
  val['shopId'] = instance.shopId;
  writeNotNull('shop', instance.shop);
  writeNotNull('salesPerson', instance.salesPerson);
  val['amount'] = instance.amount;
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}
