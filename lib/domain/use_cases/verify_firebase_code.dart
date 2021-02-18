import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';

class VerifyFirebaseCode{
  final IFirebaseRepo iFirebaseRepo;

  const VerifyFirebaseCode(this.iFirebaseRepo);

  Future<Either<Failure, FirebaseUser>> execute(String verificationCode)async{
    return await iFirebaseRepo.verifyCode(verificationCode);
  }
}