import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/shop-sales.dart';
import 'package:sales_tracker/domain/ports/shop-sales_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/shop-sales_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/shop-sales_dto.dart';

@LazySingleton(as: IShopSalesRepo)
class ShopSalesRepoImpl extends IShopSalesRepo {
  final ShopSalesCrudDataSource shopSalesCrudDataSource;

  ShopSalesRepoImpl(this.shopSalesCrudDataSource);

  @override
  Future<Either<Failure, ShopSales>> addShop(ShopSales salesShop) async {
    final result = await shopSalesCrudDataSource
        .create(ShopSalesDto.fromDomain(salesShop));
    return result.either.fold(
        (l) => left(l),
        (shopDto) => shopDto.toDomain().fold(
            () => left(SimpleFailure("Couldn't convert to domain")),
            (shopSales) => right(shopSales)));
  }

  @override
  Future<Either<Failure, List<ShopSales>>> fetchMyShops(
      String salespersonId) async {
    final shopSalesResults = await shopSalesCrudDataSource.find(options: {
      "filter": {
        "where": {
          "salesPersonId": {"eq": "$salespersonId"}
        }
      }
    });
    return shopSalesResults.either.fold((l) => left(l),
        (r) => right(IdDto.toDomainList<ShopSales, ShopSalesDto>(r)));
  }
}
