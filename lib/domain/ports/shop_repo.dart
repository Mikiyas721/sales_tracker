import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop.dart';

abstract class IShopRepo{
  Future<Either<Failure,Shop>> create(Shop shop);
  Future<Either<Failure,List<Shop>>> fetchAll(String salesPersonId);
}