import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/domain/ports/user_repo.dart';

@lazySingleton
class LoadLoggedInUser {
  final IUserRepo _iUserRepo;

  const LoadLoggedInUser(this._iUserRepo);

  Future<Option<User>>execute(){
    return _iUserRepo.getCurrentLoggedInUser();
  }
}
