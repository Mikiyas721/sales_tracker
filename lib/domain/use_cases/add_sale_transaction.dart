import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sell_transaction.dart';
import 'package:sales_tracker/domain/ports/sale_transaction_repo.dart';

@lazySingleton
class AddSaleTransaction {
  final ISaleTransactionRepo _iSellTransactionRepo;

  const AddSaleTransaction(this._iSellTransactionRepo);

  Future<Either<Failure, SaleTransaction>> execute(SaleTransaction sellTransaction){
    return _iSellTransactionRepo.create(sellTransaction);
  }
}
