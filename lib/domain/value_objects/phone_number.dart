import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';

abstract class PhoneNumberFailure extends Failure {}

class InvalidPhoneNumberFailure extends PhoneNumberFailure {
  @override
  String get message => "Invalid Phone Number";
}

const regExp = r'^(?:[0]9)?[0-9]{8}$';

class PhoneNumber {
  String value;

  PhoneNumber._(this.value);

  static Either<PhoneNumberFailure, PhoneNumber> create(String phoneNumber) {
    if (!RegExp(regExp).hasMatch(regExp))
      return left(InvalidPhoneNumberFailure());
    return right(PhoneNumber._(phoneNumber));
  }
}
