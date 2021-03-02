import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';

abstract class ICardTransactionRepo{
  Future<Either<Failure, CardTransaction>> create(CardTransaction sellTransaction);
  Future<Either<Failure,List<CardTransaction>>> fetchAll();
}