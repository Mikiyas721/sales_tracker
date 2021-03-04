import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/shop-sales.dart';

part 'shop-sales_dto.g.dart';

@JsonSerializable(nullable: false)
class ShopSalesDto extends IdDto<ShopSales> implements TimeStampedDto {
  final String id;
  final String salesPersonId;
  final String shopId;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime updatedAt;

  ShopSalesDto({
    this.id,
    this.salesPersonId,
    this.shopId,
    this.createdAt,
    this.updatedAt,
  });

  factory ShopSalesDto.fromJson(Map<String, dynamic> json) =>
      _$ShopSalesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShopSalesDtoToJson(this);

  @override
  Option<ShopSales> toDomain() {
    return ShopSales.create(
      id: id,
      salesPersonId: salesPersonId,
      shopId: shopId,
      updatedAt: updatedAt,
      createdAt: createdAt,
    );
  }

  static ShopSalesDto fromDomain(ShopSales shopSales) {
    return ShopSalesDto(
      id: shopSales.id,
      salesPersonId: shopSales.salesPersonId,
      shopId: shopSales.shopId,
      createdAt: shopSales.createdAt,
      updatedAt: shopSales.updatedAt,
    );
  }
}
