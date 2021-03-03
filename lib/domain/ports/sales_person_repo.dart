import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

abstract class ISalesPersonRepo{
  Future<Either<Failure,SalesPerson>> fetchSalesperson(PhoneNumber phoneNumber);
}