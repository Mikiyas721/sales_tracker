import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';
import 'package:sales_tracker/infrastructure/repos/firebase_repo_impl.dart';

@lazySingleton
class RequestFirebaseVerificationCode{
  final IFirebaseRepo _iFirebaseRepo;

  const RequestFirebaseVerificationCode(this._iFirebaseRepo);

  Future<Option<PhoneAuthResult>> execute(String phoneNumber)async{
    final phoneNumberObject = PhoneNumber.createWithCountryCode(phoneNumber).getOrElse(() => null);
    if(phoneNumberObject==null) return none();
    return some(await _iFirebaseRepo.requestCode(phoneNumberObject));
  }
}