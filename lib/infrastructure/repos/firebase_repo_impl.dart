import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

abstract class PhoneAuthResult {}

class PhoneAuthSuccessResult implements PhoneAuthResult {
  String token;
}

class PhoneAuthCodeSentResult implements PhoneAuthResult {}

class PhoneAuthFailedResult implements PhoneAuthResult {}

@LazySingleton(as: IFirebaseRepo)
class FirebaseRepoImpl extends IFirebaseRepo {
  final authInstance = FirebaseAuth.instance;
  String verificationId;

  @override
  Future<PhoneAuthResult> requestCode(PhoneNumber phoneNumber) {
    Completer<PhoneAuthResult> completer = Completer();
    authInstance.verifyPhoneNumber(
      phoneNumber: phoneNumber.value,
      timeout: Duration(seconds: 30),
      verificationCompleted: (AuthCredential authCredential) async {
        completer.complete(PhoneAuthSuccessResult());
        AuthResult result =
            await authInstance.signInWithCredential(authCredential);
        final idToken = await result.user.getIdToken();
        if (result.user != null) return true;
        return false;
      },
      verificationFailed: (AuthException exception) {},
      codeSent: (String verification, [int forceResend]) {
        verificationId = verification;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        completer.complete(PhoneAuthCodeSentResult());
      },
    );
    return completer.future;
  }

  @override
  Future<Either<Failure, FirebaseUser>> verifyCode(
      String verificationCode) async {
    AuthCredential credential = PhoneAuthProvider.getCredential(
        verificationId: verificationId, smsCode: verificationCode);
    AuthResult result = await authInstance.signInWithCredential(credential);
    if (result.user != null) return left(SimpleFailure('Invalid Data'));
    return right(result.user);
  }
}
