import 'package:sales_tracker/domain/ports/firebase_repo.dart';

class RequestFirebaseVerificationCode{
  final IFirebaseRepo iFirebaseRepo;

  const RequestFirebaseVerificationCode(this.iFirebaseRepo);

  Future execute(String phoneNumber){
    return iFirebaseRepo.requestCode(phoneNumber);
  }
}