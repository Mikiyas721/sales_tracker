import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/entity.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/value_objects/card_amount.dart';

class CardTransaction extends Entity {
  final String id;
  final String salesPersonId;
  final String shopId;
  final Option<Shop> shop;
  final Option<SalesPerson> salesPerson;
  final CardAmount amount;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CardTransaction._({
    this.id,
    this.salesPersonId,
    this.shopId,
    this.shop,
    this.salesPerson,
    this.amount,
    this.createdAt,
    this.updatedAt,
  });

  static Option<CardTransaction> create({
    String id,
    String salesPersonId,
    String shopId,
    Option<Shop> shop,
    Option<SalesPerson> salesPerson,
    num amount,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([
      id,
      salesPersonId,
      shopId,
      shop,
      salesPerson,
      amount,
      createdAt,
      updatedAt
    ].any((element) => element==null)) return none();

    final card = CardAmount.createFromNum(amount).getOrElse(() => null);
    if (card == null) return none();

    /// It is possible for Cash Amount to be null or zero

    return some(CardTransaction._(
      id: id,
      salesPersonId: salesPersonId,
      shopId: shopId,
      shop: shop,
      salesPerson: salesPerson,
      amount: card,
      createdAt: createdAt,
      updatedAt: updatedAt,
    ));
  }

  static Option<CardTransaction> createFromInputs({
    String salesPersonId,
    String shopId,
    CardAmount amount,
  }) {
    if ([
      salesPersonId,
      shopId,
      amount,
    ].any((element) => element==null)) return none();

    return Some(CardTransaction._(
      salesPersonId: salesPersonId,
      shopId: shopId,
      amount: amount,
    ));
  }
}
