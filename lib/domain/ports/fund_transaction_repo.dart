import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/fund_transaction.dart';

abstract class IFundTransactionRepo {
  Future<Either<Failure, FundTransaction>> create(FundTransaction fundTransaction);
  Future<Either<Failure,List<FundTransaction>>> fetchAll();
} /// why is the return value same as parameter
