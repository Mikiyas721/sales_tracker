import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';

abstract class TransactionsFailure extends Failure {}

class UndefinedCardsFailure extends TransactionsFailure {
  @override
  String get message => 'Cards is undefined';
}

class UndefinedCashFailure extends TransactionsFailure {
  @override
  String get message => 'Cash is undefined';
}

class Transactions {
  final List<CardTransaction> cards;
  final List<CashTransaction> cash;

  Transactions._(this.cards, this.cash);

  static Either<TransactionsFailure, Transactions> create(
      {List<CardTransaction> cards, List<CashTransaction> cash}) {
    if (cards == null) return left(UndefinedCardsFailure());
    if (cash == null) return left(UndefinedCashFailure());
    return right(Transactions._(cards, cash));
  }
}
