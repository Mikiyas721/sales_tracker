import 'package:sales_tracker/domain/ports/firebase_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/firebase_datasource.dart';

class FirebaseRepoImpl extends IFirebaseRepo {
  final FirebaseDataSource firebaseDataSource;

  FirebaseRepoImpl(this.firebaseDataSource);

  @override
  Future requestCode(String phoneNumber) {

  }

  @override
  Future verifyCode() {
  }

}