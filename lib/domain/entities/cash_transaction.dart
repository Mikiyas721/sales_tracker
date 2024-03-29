import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/entity.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/value_objects/cash_amount.dart';

import 'sales_person.dart';

class CashTransaction extends Entity{
  final String id;
  final String salesPersonId;
  final String shopId;
  final Shop shop;  /// Why not use Option on other objects as well, like String
  final SalesPerson salesPerson;
  final CashAmount amount;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CashTransaction._({
    this.id,
    this.salesPersonId,
    this.shopId,
    this.shop,
    this.salesPerson,
    this.amount,
    this.createdAt,
    this.updatedAt,
  });

  static Option<CashTransaction> create({
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
    ].any((e) => e == null)) return none();

    final cashAmount = CashAmount.createFromNumForFund(amount).getOrElse(() => null);
    if (cashAmount == null) return none();

    final shopObject = shop.fold(() => null, (a) => a);

    final salePersonObject = salesPerson.fold(() => null, (a) => a);

    return some(
      CashTransaction._(
        id: id,
        salesPersonId: salesPersonId,
        shopId: shopId,
        shop: shopObject,
        salesPerson: salePersonObject,
        amount: cashAmount,
        createdAt: createdAt,
        updatedAt: updatedAt,
      ),
    );
  }

  static Option<CashTransaction> createFromInputs({
    String salesPersonId,
    String shopId,
    CashAmount amount,
  }) {
    if ([
      salesPersonId,
      shopId,
      amount,
    ].any((element) => element==null)) return none();

    return Some(CashTransaction._(
      salesPersonId: salesPersonId,
      shopId: shopId,
      amount: amount,
    ));
  }
}
