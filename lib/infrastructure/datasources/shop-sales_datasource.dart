import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_response.dart';
import 'package:sales_tracker/infrastructure/dto/shop-sales_dto.dart';

abstract class ShopSalesCrudDataSource
    extends CrudDataSource<ShopSalesDto, RestResponseFailure> {}

@LazySingleton(as: ShopSalesCrudDataSource)
class ShopSalesLoopbackDataSource
    extends LoopbackRestCrudDataSource<ShopSalesDto>
    implements ShopSalesCrudDataSource {
  ShopSalesLoopbackDataSource(RestDataSource restDataSource)
      : super(
            '/shop-sales',
            restDataSource,
            (shopSales) => shopSales.toJson(),
            (map) => ShopSalesDto.fromJson(map));
}
