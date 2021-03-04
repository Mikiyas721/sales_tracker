import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/entity.dart';

class ShopSales extends Entity {
  final String id;
  final String salesPersonId;
  final String shopId;
  final DateTime createdAt;
  final DateTime updatedAt;

  ShopSales._({
    this.id,
    this.salesPersonId,
    this.shopId,
    this.createdAt,
    this.updatedAt,
  });

  static Option<ShopSales> create({
    String id,
    String salesPersonId,
    String shopId,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([id, salesPersonId, shopId, createdAt, updatedAt]
        .any((element) => element == null)) return none();
    return some(ShopSales._(
        id: id,
        salesPersonId: salesPersonId,
        shopId: shopId,
        createdAt: createdAt,
        updatedAt: updatedAt));
  }

  static Option<ShopSales> createForPostRequest(
      {String salesPersonId, String shopId}) {
    if ([salesPersonId, shopId].any((element) => element == null))
      return none();
    return some(ShopSales._(salesPersonId: salesPersonId, shopId: shopId));
  }
}
