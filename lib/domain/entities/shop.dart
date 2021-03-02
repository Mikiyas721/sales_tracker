import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/entity.dart';
import 'package:sales_tracker/domain/value_objects/address.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

class Shop extends Entity{
  final String id;
  final Name name;
  final Address address;
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

    final addressObject = Address.create(address).getOrElse(() => null);
    if (addressObject == null) return none();

    final phoneNumberObject = PhoneNumber.create(phoneNumber).getOrElse(() => null);
    if (phoneNumberObject == null) return none();

    return some(Shop._(
      id: id,
      name: nameObject,
      address: addressObject,
      phoneNumber: phoneNumberObject,
      createdAt: createdAt,
      updatedAt: updatedAt,
      balance: balance,
    ));
  }

  static Option<Shop> createFromInputs({
    Name name,
    Address address,
    PhoneNumber phoneNumber,
  }) {
    if ([
      name,
      address,
      phoneNumber,
    ].any((element) => null)) return none();

    return some(
      Shop._(
        name: name,
        address: address,
        phoneNumber: phoneNumber,
      ),
    );
  }

}
