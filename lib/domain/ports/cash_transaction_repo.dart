import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';

abstract class ICashTransactionRepo {
  Future<Either<Failure, CashTransaction>> create(CashTransaction fundTransaction);
  Future<Either<Failure,List<CashTransaction>>> fetchAll(String salespersonId, String shopId);
  Future<Either<Failure, List<CashTransaction>>> fetchToday(String salespersonId);
  Future<Either<Failure, List<CashTransaction>>> fetchThisWeek(String salespersonId);
  Future<Either<Failure, List<CashTransaction>>> fetchThisMonth(String salespersonId);
}
