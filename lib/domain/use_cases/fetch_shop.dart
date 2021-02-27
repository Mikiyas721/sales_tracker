import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/ports/shop_repo.dart';

@lazySingleton
class FetchShops {
  final IShopRepo _iShopRepo;

  const FetchShops(this._iShopRepo);

  Future<Either<Failure, List<Shop>>> execute(){
    return _iShopRepo.fetchAll();
  }
}
