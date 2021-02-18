import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/ports/shop_repo.dart';

class AddShop {
  final IShopRepo iShopRepo;

  const AddShop(this.iShopRepo);

  Future<Either<Failure, List<Shop>>> execute(){
    return iShopRepo.fetchAll();
  }
}
