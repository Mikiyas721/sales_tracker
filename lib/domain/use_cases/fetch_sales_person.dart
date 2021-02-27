import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';
import 'package:sales_tracker/domain/ports/sales_person_repo.dart';

@lazySingleton
class FetchSalesPerson {
  final ISalesPersonRepo _iSalesPersonRepo;

  const FetchSalesPerson(this._iSalesPersonRepo);

  Future<Either<Failure, SalesPerson>> execute(String id){
    return _iSalesPersonRepo.fetchPerson(id);
  }
}
