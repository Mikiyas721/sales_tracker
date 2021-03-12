import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/domain/ports/user_repo.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

@lazySingleton
class LoadLoggedInUser {
  final IUserRepo _iUserRepo;

  const LoadLoggedInUser(this._iUserRepo);

  Future<Option<User>> execute() async {
    return _iUserRepo.getCurrentLoggedInUser();
  }
}
