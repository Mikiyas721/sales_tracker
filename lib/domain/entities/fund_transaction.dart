import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/entity.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/value_objects/cash_amount.dart';

import 'sales_person.dart';

class FundTransaction extends Entity{
  final String id;
  final String salesPersonId;
  final String shopId;
  final Shop shop;

  /// Why not use Option on other objects as well, like String
  final SalesPerson salesPerson;
  final CashAmount amount;
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

    final cashAmount = CashAmount.createFromNum(amount).getOrElse(() => null);
    if (cashAmount == null) return none();

    final shopObject = shop.fold(() => null, (a) => a);
    if(shopObject==null) return none();

    final salePersonObject = salesPerson.fold(() => null, (a) => a);
    if(salePersonObject==null) return none();

    return some(
      FundTransaction._(
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

  static Option<FundTransaction> createFromInputs({
    String salesPersonId,
    String shopId,
    CashAmount cashAmount,
  }) {
    if ([
      salesPersonId,
      shopId,
      cashAmount,
    ].any((element) => null)) return none();

    return Some(FundTransaction._(
      salesPersonId: salesPersonId,
      shopId: shopId,
      amount: cashAmount,
    ));
  }
}
