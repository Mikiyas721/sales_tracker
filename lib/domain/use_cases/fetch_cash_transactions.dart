import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/ports/cash_transaction_repo.dart';

@lazySingleton
class FetchCashTransactions {
  final ICashTransactionRepo _cashTransactionRepo;

  const FetchCashTransactions(this._cashTransactionRepo);

  Future<Either<Failure, List<CashTransaction>>> execute(String salespersonId, String shopId) {
    return _cashTransactionRepo.fetchAll(salespersonId, shopId);
  }
}
