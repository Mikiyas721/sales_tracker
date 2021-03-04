import 'package:injectable/injectable.dart';
import 'package:sales_tracker/domain/ports/user_repo.dart';

@lazySingleton
class ClearLoggedInUser {
  final IUserRepo _iUserRepo;

  ClearLoggedInUser(this._iUserRepo);

  Future<bool> execute() {
    return _iUserRepo.clearLoggedInUser();
  }
}
