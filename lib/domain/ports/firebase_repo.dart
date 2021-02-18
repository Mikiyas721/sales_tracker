abstract class IFirebaseRepo{
  Future requestCode(String phoneNumber);
  Future verifyCode();
}