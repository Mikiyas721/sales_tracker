import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_response.dart';
import 'package:sales_tracker/infrastructure/dto/sales_person_dto.dart';
import '../../common/datasource/rest_datasource/rest_request.dart';

abstract class SalesPeopleCrudDataSource
    extends CrudDataSource<SalesPersonDto, RestResponseFailure> {
  Future<RestResponseWithFailure> logIn(String idToken);
}

@LazySingleton(as: SalesPeopleCrudDataSource)
class SalesPeopleLoopbackDataSource extends LoopbackRestCrudDataSource<SalesPersonDto>
    implements SalesPeopleCrudDataSource {
  SalesPeopleLoopbackDataSource(RestDataSource restDataSource)
      : super(
          '/salesPeople',
          restDataSource,
          (salesPerson) => salesPerson.toJson(),
          (map) => SalesPersonDto.fromJson(map),
        );
  Future<RestResponseWithFailure> logIn(String idToken) async {
    return restDataSource.post(RestRequest(
      url: '$path/login',
      data: {
        "idToken": "$idToken"
      },
    ));
  }
}
