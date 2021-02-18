import 'package:firebase_auth/firebase_auth.dart';

class FirebaseDataSource {
  final authInstance = FirebaseAuth.instance;

  FirebaseDataSource() {
    authInstance.verifyPhoneNumber(
        phoneNumber: null,
        timeout: Duration(seconds: 60),
        verificationCompleted: null,
        verificationFailed: null,
        codeSent: null,
        codeAutoRetrievalTimeout: null);
  }
}
