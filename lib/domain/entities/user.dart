import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/entity.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

class User extends Entity {
  final String id;
  final Name name;
  final PhoneNumber phoneNumber;
  final String token;
  final DateTime createdAt;
  final DateTime updatedAt;

  User._(this.id, this.name, this.phoneNumber, this.token, this.createdAt,
      this.updatedAt);

  static Option<User> create(
      {String id,
      Name name,
      PhoneNumber phoneNumber,
      String token,
      DateTime createdAt,
      DateTime updatedAt}) {
    if ([id, name, phoneNumber, token].any((element) => element == null))
      return none();
    return some(User._(id, name, phoneNumber, token, createdAt, updatedAt));
  }
}
