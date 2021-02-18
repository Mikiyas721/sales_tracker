import 'package:dartz/dartz.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

class RequestFirebaseVerificationCode{
  final IFirebaseRepo iFirebaseRepo;

  const RequestFirebaseVerificationCode(this.iFirebaseRepo);

  Option<void> execute(String phoneNumber){
    final phoneNumberObject = PhoneNumber.createWithCountryCode(phoneNumber).getOrElse(() => null);
    if(phoneNumberObject==null) return none();
    return some(iFirebaseRepo.requestCode(phoneNumberObject));
  }
}