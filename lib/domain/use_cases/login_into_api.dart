import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/ports/sales_person_repo.dart';

@lazySingleton
class LoginIntoApi {
  final ISalesPersonRepo _iSalesPersonRepo;

  const LoginIntoApi(this._iSalesPersonRepo);

  Future<Either<Failure, Map>> execute(String idToken) {
    return _iSalesPersonRepo.login(idToken);
  }
}
