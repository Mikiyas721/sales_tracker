import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';
import 'package:sales_tracker/domain/ports/sales_person_repo.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

@lazySingleton
class FetchSalesPerson {
  final ISalesPersonRepo _iSalesPersonRepo;

  const FetchSalesPerson(this._iSalesPersonRepo);

  Future<Either<Failure, SalesPerson>> execute(PhoneNumber phoneNumber)async{
    return right(SalesPerson.create(phoneNumber: '0941135730').getOrElse(() => null));_iSalesPersonRepo.fetchSalesperson(phoneNumber);
  }
}
