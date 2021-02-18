import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sell_transaction.dart';

abstract class ISaleTransactionRepo{
  Future<Either<Failure, SaleTransaction>> create(SaleTransaction sellTransaction);
  Future<Either<Failure,List<SaleTransaction>>> fetchAll();
}