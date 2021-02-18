import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';

abstract class ISalesPersonRepo{
  Future<Either<Failure,SalesPerson>> fetchPerson(String id);/// Should be by phoneNumber
}