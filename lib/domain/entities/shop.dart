import 'package:dartz/dartz.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

class Shop {
  final String id;
  final Name name;
  final String address;

  /// does it need a value object??
  final PhoneNumber phoneNumber;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int balance;

  Shop._({
    this.id,
    this.name,
    this.address,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
    this.balance,
  });

  static Option<Shop> create({
    String id,
    String name,
    String address,
    String phoneNumber,
    DateTime createdAt,
    DateTime updatedAt,
    int balance,
  }) {
    if ([
      id,
      name,
      address,
      phoneNumber,
      createdAt,
      updatedAt,
      balance,
    ].any((element) => null)) return none();
    final nameObject = Name.create(name).getOrElse(() => null);
    if (nameObject == null) return none();
    final phoneNumberObject =
        PhoneNumber.create(phoneNumber).getOrElse(() => null);
    if (phoneNumberObject == null) return none();
    return some(Shop._(
      id: id,
      name: nameObject,
      address: address,
      phoneNumber: phoneNumberObject,
      createdAt: createdAt,
      updatedAt: updatedAt,
      balance: balance,
    ));
  }

  static Option<Shop> createFromInputs({
    String name,
    String address,
    String phoneNumber,
  }) {}
}
