import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/ports/shop-sales_repo.dart';

@lazySingleton
class FetchShops {
  final IShopSalesRepo _iShopSalesRepo;

  const FetchShops(this._iShopSalesRepo);

  Future<Either<Failure, List<Shop>>> execute(String salesPersonId) async {
    final result = await _iShopSalesRepo.fetchMyShops(salesPersonId);
    return result.fold((l) => left(l), (r) {
      List<Shop> shops = [];
      r.forEach((element) {
        if (element.shop.isSome())
          shops.add(element.shop.getOrElse(() => null));
      });
      return right(shops);
    });
  }
}
