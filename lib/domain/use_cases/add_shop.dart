import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/ports/shop_repo.dart';

@lazySingleton
class AddShop {
  final IShopRepo _iShopRepo;

  const AddShop(this._iShopRepo);

  Future<Either<Failure, Shop>> execute(Shop shop) async {
    final shopResult =
        await _iShopRepo.getShopByPhoneNumber(shop.phoneNumber.value);
    return shopResult.fold((l) async {
      /// Might create duplicate due to toDomain method
      final newShop = await _iShopRepo.create(shop);
      return newShop.fold((l) => left(l), (shop) => right(shop));
    }, (shop) => right(shop));
  }
}
