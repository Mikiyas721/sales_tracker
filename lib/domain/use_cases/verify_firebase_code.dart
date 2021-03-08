import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';

@lazySingleton
class VerifyFirebaseCode {
  final IFirebaseRepo _iFirebaseRepo;

  const VerifyFirebaseCode(this._iFirebaseRepo);

  Future<Either<Failure, String>> execute(String verificationCode) async {
    return await _iFirebaseRepo.verifyCode(verificationCode);
  }
}
