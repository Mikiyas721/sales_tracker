import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';

abstract class ICardTransactionRepo{
  Future<Either<Failure, CardTransaction>> create(CardTransaction sellTransaction);
  Future<Either<Failure, Map>> addSalesTransaction(CardTransaction cardTransaction, CashTransaction cashTransaction);
  Future<Either<Failure,List<CardTransaction>>> fetchAll(String salespersonId, String shopId);
  Future<Either<Failure, List<CardTransaction>>> fetchToday(String salespersonId);
  Future<Either<Failure, List<CardTransaction>>> fetchThisWeek(String salespersonId);
  Future<Either<Failure, List<CardTransaction>>> fetchThisMonth(String salespersonId);
}