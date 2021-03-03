import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/ports/card_transaction_repo.dart';
import 'package:sales_tracker/domain/ports/cash_transaction_repo.dart';

@lazySingleton
class FetchThisWeekCard {
  final ICardTransactionRepo _iCardTransactionsRepo;

  FetchThisWeekCard(this._iCardTransactionsRepo);

  Future<Either<Failure, List<CardTransaction>>> execute(String salespersonId) {
    return _iCardTransactionsRepo.fetchThisWeek(salespersonId);
  }
}

@lazySingleton
class FetchThisWeekCash {
  final ICashTransactionRepo _iCashTransactionsRepo;

  FetchThisWeekCash(this._iCashTransactionsRepo);

  Future<Either<Failure, List<CashTransaction>>> execute(String salespersonId) {
    return _iCashTransactionsRepo.fetchThisWeek(salespersonId);
  }
}