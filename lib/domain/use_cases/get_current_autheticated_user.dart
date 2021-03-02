import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/domain/entities/user.dart';

@lazySingleton
class GetCurrentAuthenticatedUser {
  Future<Option<User>> execute() {

  }
}
