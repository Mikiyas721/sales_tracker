import 'package:dartz/dartz.dart';
import 'package:sales_tracker/domain/entities/user.dart';

abstract class IUserRepo {
  Future saveLoggedInUser(User user);

  Future<Option<User>> getCurrentLoggedInUser();
  Future<bool> clearLoggedInUser();
}
