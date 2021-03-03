import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/domain/ports/user_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/user_cache_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/user_dto.dart';

@LazySingleton(as:IUserRepo)
class UserRepo extends IUserRepo{
  final UserCacheDataSource userCacheDataSource;
  static const _KEY = "loggedInUser";

  UserRepo(this.userCacheDataSource);

  Future saveLoggedInUser(User user) {
   return userCacheDataSource.saveMap(_KEY, UserDto.fromDomain(user).toJson());
  }

  Future<Option<User>> getCurrentLoggedInUser()async{
    return userCacheDataSource.getMap(_KEY).then((value) => value.flatMap((a) => UserDto.fromJson(a).toDomain()));
  }
}