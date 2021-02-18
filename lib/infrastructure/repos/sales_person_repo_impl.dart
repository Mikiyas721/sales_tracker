import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sales_person.dart';
import 'package:sales_tracker/domain/ports/sales_person_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/sales_person_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/sales_person_dto.dart';

class SalesPersonRepoImpl extends ISalesPersonRepo {
  final SalesPeopleCrudDataSource salesPeopleCrudDataSource;

  SalesPersonRepoImpl(this.salesPeopleCrudDataSource);

  @override
  Future<Either<Failure, SalesPerson>> fetchPerson(String id) async {
    final salesPeople = await salesPeopleCrudDataSource.findById(id);
    return salesPeople.either.fold(
        (l) => left(l),
        (r) => r
            .toDomain()
            .fold(() => left(SimpleFailure('Invalid Data')), (a) => right(a)));
  }
}
