import 'package:injectable/injectable.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/domain/ports/user_repo.dart';

@lazySingleton
class SaveUser{
  final IUserRepo _iUserRepo;

  const SaveUser(this._iUserRepo);

  Future execute(User user)async{
    return _iUserRepo.saveLoggedInUser(user);
  }
}
