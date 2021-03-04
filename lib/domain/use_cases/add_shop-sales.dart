import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop-sales.dart';
import 'package:sales_tracker/domain/ports/shop-sales_repo.dart';

@lazySingleton
class AddShopSales{
  final IShopSalesRepo _iShopSalesRepo;

  AddShopSales(this._iShopSalesRepo);
  Future<Either<Failure, ShopSales>> execute(ShopSales shopSales){
    return _iShopSalesRepo.addShop(shopSales);
  }
}