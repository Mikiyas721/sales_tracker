import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/entity.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

class User extends Entity {
  final String id;
  final Name name;
  final PhoneNumber phoneNumber;

  User._(this.id, this.name, this.phoneNumber);

  static Option<User> create({String id, Name name, PhoneNumber phoneNumber}) {
    if ([id, name, phoneNumber].any((element) => element == null))
      return none();
    return some(User._(id, name, phoneNumber));
  }
}
