import 'package:dartz/dartz.dart';
import 'package:flocalizer/flocalizer.dart';
import 'package:flocalizer/models/locale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_tracker/common/id_dto.dart';

part 'flocale_dto.g.dart';

@JsonSerializable()
class FLocaleDto extends IdDto {

  final String name;
  final String countryCode;
  final String languageCode;
  final Map<String, String> translationMap;

  FLocaleDto({
       this.name,
    this.countryCode,
    this.languageCode,
    this.translationMap,
  });

  static FLocaleDto fromJson(Map<String, dynamic> json) => _$FLocaleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FLocaleDtoToJson(this);

  FLocale toDomain2() {
    return FLocale(
      name: this.name,
      countryCode: this.languageCode,
      languageCode: this.languageCode,
      translation: Translation.withMap(translationMap),
    );
  }

  static FLocaleDto fromDomain(FLocale fLocale) {
    return FLocaleDto(
      languageCode: fLocale.languageCode,
      countryCode: fLocale.countryCode,
      name: fLocale.name,
      translationMap: fLocale.translation.translationMap,
    );
  }

  @override
  String get id => "${languageCode}_$countryCode";

  @override
  Option toDomain() {
    // TODO: implement toDomain
    throw UnimplementedError();
  }
}
