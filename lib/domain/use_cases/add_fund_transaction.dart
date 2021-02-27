import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/fund_transaction.dart';
import 'package:sales_tracker/domain/ports/fund_transaction_repo.dart';

@lazySingleton
class AddFundTransaction {
  final IFundTransactionRepo _fundTransactionRepo;

  const AddFundTransaction(this._fundTransactionRepo);

  Future<Either<Failure, FundTransaction>> execute(FundTransaction fundTransaction) {
    return _fundTransactionRepo.create(fundTransaction);
  }
}
