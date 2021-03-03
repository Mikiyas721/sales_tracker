import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';
import 'package:sales_tracker/infrastructure/repos/firebase_repo_impl.dart';

@lazySingleton
class RequestFirebaseVerificationCode{
  final IFirebaseRepo _iFirebaseRepo;

  const RequestFirebaseVerificationCode(this._iFirebaseRepo);

  Future<Either<Failure, PhoneAuthResult>> execute(PhoneNumber phoneNumber)async{
    if(phoneNumber==null) return left(SimpleFailure("Phone Number is Required"));
    final result = await _iFirebaseRepo.requestCode(phoneNumber);
    return result.fold((l) => left(l), (r) => right(r));
  }
}