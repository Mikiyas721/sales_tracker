import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/ports/shop_repo.dart';


@lazySingleton
class AddShop {
  final IShopRepo _iShopRepo;

  const AddShop(this._iShopRepo);

  Future<Either<Failure, Shop>> execute(Shop shop){
    return _iShopRepo.create(shop);
  }
}
