import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/ports/card_transaction_repo.dart';

@lazySingleton
class FetchCardTransactions {
  final ICardTransactionRepo _iCardTransactionRepo;

  const FetchCardTransactions(this._iCardTransactionRepo);

  Future<Either<Failure, List<CardTransaction>>> execute(String salespersonId, String shopId){
    return _iCardTransactionRepo.fetchAll(salespersonId, shopId);
  }
}
