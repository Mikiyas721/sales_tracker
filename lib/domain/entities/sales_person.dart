import 'package:dartz/dartz.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

class SalesPerson {
  final String id;
  final Name name;
  final PhoneNumber phoneNumber;
  final List<String> shops;
  final DateTime createdAt;
  final DateTime updatedAt;

  SalesPerson._({
    this.id,
    this.name,
    this.phoneNumber,
    this.shops,
    this.createdAt,
    this.updatedAt,
  });

  static Option<SalesPerson> create({
    String id,
    String name,
    String phoneNumber,
    List<String> shops,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([
      id,
      name,
      phoneNumber,
      shops,
      createdAt,
      updatedAt,
    ].any((element) => element == null)) return none();
    final nameObject = Name.create(name).getOrElse(() => null);
    final phoneNumberObject = PhoneNumber.create(phoneNumber).getOrElse(() => null);
    if (nameObject == null) return none();
    if (phoneNumberObject == null) return none();
    return some(SalesPerson._(
        id:id,
        name:nameObject,
        phoneNumber:phoneNumberObject,
        shops:shops,
        createdAt:createdAt,
        updatedAt:updatedAt,
    ));
  }
}
