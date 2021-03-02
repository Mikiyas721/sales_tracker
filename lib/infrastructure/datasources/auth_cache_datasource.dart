import 'package:sales_tracker/common/datasource/cache_datasource/cache_datasource.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:sales_tracker/infrastructure/dto/user_dto.dart';

const _KEY = "loggedInUser";

class AuthCashDataSource {
  final CacheDataSource cacheDataSource;

  AuthCashDataSource(this.cacheDataSource);


  saveLoggedInUser(UserDto userDto) {
    cacheDataSource.saveMap(_KEY, userDto.toJson());
  }

  Future<Option<User>> getCurrentLoggedInUser()async{
    return cacheDataSource.getMap(_KEY).then((value) => value.flatMap((a) => UserDto.fromJson(a).toDomain()));
  }

}