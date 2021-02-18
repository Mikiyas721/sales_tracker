import 'package:sales_tracker/domain/ports/firebase_repo.dart';

class VerifyFirebaseCode{
  final IFirebaseRepo iFirebaseRepo;

  const VerifyFirebaseCode(this.iFirebaseRepo);

  Future execute(){
    return iFirebaseRepo.verifyCode();
  }
}