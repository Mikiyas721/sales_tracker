import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/ports/firebase_repo.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

@LazySingleton(as: IFirebaseRepo)
class FirebaseRepoImpl extends IFirebaseRepo {
  final authInstance = FirebaseAuth.instance;
  String verificationId;

  @override
  void requestCode(PhoneNumber phoneNumber) {
    authInstance.verifyPhoneNumber(
      phoneNumber: phoneNumber.value,
      timeout: Duration(minutes: 2),
      verificationCompleted: (AuthCredential authCredential) async{
        AuthResult result = await authInstance.signInWithCredential(authCredential);
        if (result.user != null) return true;
        return false;
      },
      verificationFailed: (AuthException exception) {},
      codeSent: (String verification, [int forceResend]) {
        verificationId = verification;
      },
      codeAutoRetrievalTimeout: null,
    );
  }

  @override
  Future<Either<Failure, FirebaseUser>> verifyCode(String verificationCode)async {
    AuthCredential credential = PhoneAuthProvider.getCredential(
        verificationId: verificationId, smsCode: verificationCode);
    AuthResult result = await authInstance.signInWithCredential(credential);
    if (result.user != null) return left(SimpleFailure('Invalid Data'));
    return right(result.user);
  }
}
