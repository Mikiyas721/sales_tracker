import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';
import 'package:sales_tracker/infrastructure/repos/firebase_repo_impl.dart';

abstract class IFirebaseRepo{
  Future<PhoneAuthResult> requestCode(PhoneNumber phoneNumber);
  Future<Either<Failure, FirebaseUser>> verifyCode(String verificationCode);
}