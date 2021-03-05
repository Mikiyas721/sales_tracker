import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_request.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_response.dart';
import 'package:sales_tracker/infrastructure/dto/shop_dto.dart';

abstract class ShopCrudDataSource
    extends CrudDataSource<ShopDto, RestResponseFailure> {
  Future<RestResponseWithFailure> addSalespersonShop(ShopDto shopDto, String salesPersonId);
}

@LazySingleton(as: ShopCrudDataSource)
class ShopLoopbackDataSource extends LoopbackRestCrudDataSource<ShopDto>
    implements ShopCrudDataSource {
  ShopLoopbackDataSource(RestDataSource restDataSource)
      : super(
          '/shops',
          restDataSource,
          (shop) => shop.toJson(),
          (map) => ShopDto.fromJson(map),
        );

  Future<RestResponseWithFailure> addSalespersonShop(ShopDto shopDto, String salesPersonId)async{
    return restDataSource.post(RestRequest(
      url: '$path/addSalespersonShop',
      data: {
        'shopToSave': shopDto.toJson(),
        'salespersonId': salesPersonId
      },
    ));
  }
}
