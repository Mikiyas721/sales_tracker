// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flocale_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FLocaleDto _$FLocaleDtoFromJson(Map<String, dynamic> json) {
  return FLocaleDto(
    name: json['name'] as String,
    countryCode: json['countryCode'] as String,
    languageCode: json['languageCode'] as String,
    translationMap: (json['translationMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$FLocaleDtoToJson(FLocaleDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'countryCode': instance.countryCode,
      'languageCode': instance.languageCode,
      'translationMap': instance.translationMap,
    };
