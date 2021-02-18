import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/fund_transaction.dart';
import 'package:sales_tracker/domain/ports/fund_transaction_repo.dart';

@lazySingleton
class FetchFundTransactions {
  final IFundTransactionRepo fundTransactionRepo;

  const FetchFundTransactions(this.fundTransactionRepo);

  Future<Either<Failure, List<FundTransaction>>> execute() {
    return fundTransactionRepo.fetchAll();
  }
}
