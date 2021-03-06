import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/ports/card_transaction_repo.dart';
import 'package:sales_tracker/domain/ports/cash_transaction_repo.dart';

@lazySingleton
class FetchThisMonthCard {
  final ICardTransactionRepo _iCardTransactionRepo;

  FetchThisMonthCard(this._iCardTransactionRepo);

  Future<Either<Failure, List<CardTransaction>>> execute(String salespersonId) {
    return _iCardTransactionRepo.fetchThisMonth(salespersonId);
  }
}

@lazySingleton
class FetchThisMonthCash {
  final ICashTransactionRepo _iCashTransactionRepo;

  FetchThisMonthCash(this._iCashTransactionRepo);

  Future<Either<Failure, List<CashTransaction>>> execute(String salespersonId) {
    return _iCashTransactionRepo.fetchThisMonth(salespersonId);
  }
}