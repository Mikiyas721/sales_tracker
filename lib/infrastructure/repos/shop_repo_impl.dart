import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_response.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/ports/shop_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/shop_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/shop_dto.dart';

@LazySingleton(as: IShopRepo)
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
  Future<Either<RestResponseFailure, List<Shop>>> fetchAll(
      String salesPersonId) async {
    final result = await shopCrudDataSource.find(options: {
      "filter": {
        "where": {
          "salesPersonId": {"eq": "$salesPersonId"}
        }
      }
    });
    return result.either.fold(
        (l) => left(l), (r) => right(IdDto.toDomainList<Shop, ShopDto>(r)));
  }
}
