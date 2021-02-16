import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/fund_transaction.dart';
import 'package:sales_tracker/domain/ports/fund_transaction_repo.dart';

@lazySingleton
class CreateFundTransaction {
  final IFundTransactionRepo fundTransactionRepo;

  const CreateFundTransaction(this.fundTransactionRepo);

  Future<Either<Failure, FundTransaction>> execute(FundTransaction fundTransaction) {
    return fundTransactionRepo.create(fundTransaction);
  }
}
