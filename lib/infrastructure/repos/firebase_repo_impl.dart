import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

abstract class PhoneAuthResult {}

class PhoneAuthCodeSentResult implements PhoneAuthResult {}

class PhoneAuthSuccessResult implements PhoneAuthResult {
  final String token;

  PhoneAuthSuccessResult(this.token);
}

class PhoneAuthFailedResult implements PhoneAuthResult {
  final String failureMessage;

  PhoneAuthFailedResult(this.failureMessage);
}

@LazySingleton(as: IFirebaseRepo)
class FirebaseRepoImpl extends IFirebaseRepo {
  final authInstance = FirebaseAuth.instance;
  String verificationId;

  @override
  Future<PhoneAuthResult> requestCode(PhoneNumber phoneNumber) async {
    Completer<PhoneAuthResult> completer = Completer();
    authInstance.verifyPhoneNumber(
      phoneNumber: phoneNumber.value,
      timeout: Duration(seconds: 30),
      verificationCompleted: (AuthCredential authCredential) async {
        UserCredential result =
            await authInstance.signInWithCredential(authCredential);
        final idToken = await result.user.getIdToken();
        completer.complete(PhoneAuthSuccessResult(idToken));
      },
      verificationFailed: (FirebaseAuthException exception) {
        completer.complete(PhoneAuthFailedResult(exception.message));
      },
      codeSent: (String verification, [int forceResend]) {
        verificationId = verification;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        completer.complete(PhoneAuthCodeSentResult());
      },
    );
    return await completer.future;
  }

  @override
  Future<Either<Failure, String>> verifyCode(String verificationCode) async {
    AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: verificationCode);
    UserCredential result = await authInstance.signInWithCredential(credential);
    final idToken = await result.user.getIdToken();
    return right(idToken);
  }
}
