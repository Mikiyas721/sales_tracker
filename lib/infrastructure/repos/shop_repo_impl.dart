import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/ports/shop_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/shop_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/shop_dto.dart';

class ShopRepoImpl extends IShopRepo {
  final ShopCrudDataSource shopCrudDataSource;

  ShopRepoImpl(this.shopCrudDataSource);

  @override
  Future<Either<Failure, Shop>> create(Shop shop) async {
    final result = await shopCrudDataSource.create(ShopDto.fromDomain(shop));
    return result.either.fold(
        (l) => left(l),
        (r) => r
            .toDomain()
            .fold(() => left(SimpleFailure('Invalid Data')), (a) => right(a)));
  }
  @override
  Future<Either<Failure, List<Shop>>> fetchAll() async{
    final result = await shopCrudDataSource
        .find();
    return result.either.fold(
            (l) => left(l),
            (r)=>null);
  }
}
