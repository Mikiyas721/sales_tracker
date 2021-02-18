import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sell_transaction.dart';
import 'package:sales_tracker/domain/ports/sale_transaction_repo.dart';

@lazySingleton
class FetchSaleTransactions {
  final ISaleTransactionRepo iSellTransactionRepo;

  const FetchSaleTransactions(this.iSellTransactionRepo);

  Future<Either<Failure, List<SaleTransaction>>> execute(){
    return iSellTransactionRepo.fetchAll();
  }
}
