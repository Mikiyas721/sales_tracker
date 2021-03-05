import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/ports/card_transaction_repo.dart';

@lazySingleton
class AddSaleTransaction {
  final ICardTransactionRepo _iCardTransactionRepo;

  AddSaleTransaction(this._iCardTransactionRepo);

  Future<Either<Failure, Map>> execute(
      CardTransaction cardTransaction, CashTransaction cashTransaction) async {
    return _iCardTransactionRepo.addSalesTransaction(
        cardTransaction, cashTransaction);
  }
}
