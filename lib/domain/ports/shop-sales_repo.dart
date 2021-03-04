import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop-sales.dart';

abstract class IShopSalesRepo {
  Future<Either<Failure, ShopSales>> addShop(ShopSales shopSales);
  Future<Either<Failure, List<ShopSales>>> fetchMyShops(String salespersonId);
}