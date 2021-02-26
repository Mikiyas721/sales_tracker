import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';

@lazySingleton
class VerifyFirebaseCode {
  final IFirebaseRepo iFirebaseRepo;

  const VerifyFirebaseCode(this.iFirebaseRepo);

  Future<Either<Failure, FirebaseUser>> execute(String verificationCode) async {
    return await iFirebaseRepo.verifyCode(verificationCode);
  }
}
