import 'package:dartz/dartz.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/value_objects/amount.dart';

import 'sales_person.dart';

class FundTransaction {
  final String id;
  final String salesPersonId;
  final String shopId;
  final Option<Shop> shop;
  final Option<SalesPerson> salesPerson;
  final CardAmount amount;
  final DateTime createdAt;
  final DateTime updatedAt;

  const FundTransaction._({
    this.id,
    this.salesPersonId,
    this.shopId,
    this.shop,
    this.salesPerson,
    this.amount,
    this.createdAt,
    this.updatedAt,
  });

  static Option<FundTransaction> create({
    String id,
    String salesPersonId,
    String shopId,
    Option<Shop> shop,
    Option<SalesPerson> salesPerson,
    num amount,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([id, salesPersonId, shopId, shop, salesPerson, amount, createdAt, updatedAt].any((e) => e == null))
      return none();

    final cardAmount = CardAmount.createFromNum(amount).getOrElse(() => null);

    if (cardAmount == null) return none();

    return some(
      FundTransaction._(
        id: id,
        salesPersonId: salesPersonId,
        shopId: shopId,
        shop: shop,
        salesPerson: salesPerson,
        amount: cardAmount,
        createdAt: createdAt,
        updatedAt: updatedAt,
      ),
    );
  }

  static Option<FundTransaction> createSimple({
    String salesPersonId,
    String shopId,
    num amount,
  }) {
    if ([
      salesPersonId,
      shopId,
      amount,
    ].any((e) => e == null)) return none();

    final cardAmount = CardAmount.createFromNum(amount).getOrElse(() => null);

    if (cardAmount == null) return none();

    return some(
      FundTransaction._(
        id: null,
        salesPersonId: salesPersonId,
        shopId: shopId,
        shop: none(),
        salesPerson: none(),
        amount: cardAmount,
        createdAt: null,
        updatedAt: null,
      ),
    );
  }
}
