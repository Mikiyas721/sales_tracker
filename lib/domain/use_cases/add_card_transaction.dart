import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/ports/card_transaction_repo.dart';

@lazySingleton
class AddCardTransaction {
  final ICardTransactionRepo _iCardTransactionRepo;

  const AddCardTransaction(this._iCardTransactionRepo);

  Future<Either<Failure, CardTransaction>> execute(CardTransaction cardTransaction){
    return _iCardTransactionRepo.create(cardTransaction);
  }
}
