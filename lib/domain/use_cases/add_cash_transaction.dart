import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/ports/cash_transaction_repo.dart';

@lazySingleton
class AddCashTransaction {
  final ICashTransactionRepo _cashTransactionRepo;

  const AddCashTransaction(this._cashTransactionRepo);

  Future<Either<Failure, CashTransaction>> execute(CashTransaction cashTransaction) {
    return _cashTransactionRepo.create(cashTransaction);
  }
}
