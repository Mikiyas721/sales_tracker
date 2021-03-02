import 'package:sales_tracker/common/datasource/cache_datasource/cache_datasource.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/infrastructure/dto/sales_person_dto.dart';

const _KEY = "loggedInUser";

class AuthCashDataSource {
  final CacheDataSource cacheDataSource;

  AuthCashDataSource(this.cacheDataSource);


  saveLoggedInUser(SalesPersonDto salesPersonDto) {
    cacheDataSource.saveMap(_KEY, salesPersonDto.toJson());
  }

  Future<Option<Sale>>> getCurrentLoggedInUser(){
    return cacheDataSource.getMap(_KEY).then((value) => value.flatMap((a) => SalesPersonDto.fromJson(a).toDomain()));
  }

}