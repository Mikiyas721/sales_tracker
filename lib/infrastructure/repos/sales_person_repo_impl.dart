import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';
import 'package:sales_tracker/domain/ports/sales_person_repo.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';
import 'package:sales_tracker/infrastructure/datasources/sales_person_datasource.dart';

@LazySingleton(as: ISalesPersonRepo)
class SalesPersonRepoImpl extends ISalesPersonRepo {
  final SalesPeopleCrudDataSource salesPeopleCrudDataSource;

  SalesPersonRepoImpl(this.salesPeopleCrudDataSource);

  @override
  Future<Either<Failure, SalesPerson>> fetchSalesperson(PhoneNumber phoneNumber) async {
    final salesPeople = await salesPeopleCrudDataSource.find(options: {
      "filter": {
        "where": {
          "phoneNumber": phoneNumber.value,
         }
      }
    });
    return salesPeople.either.fold((l) => left(l), (r) {
      if (r.isEmpty)
        return left(SimpleFailure("No Such User.Please ask to be registered first."));
      else
        return r[0]
            .toDomain()
            .fold(() => left(SimpleFailure('Unable to change to Domain')), (a) => right(a));
    });
  }

  Future<Either<Failure, Map>> login(String idToken)async{
   final result = await salesPeopleCrudDataSource.logIn(idToken);
   return result.fold((l)=>left(l), (r) => right(r.value));
  }
}
