import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sell_transaction.dart';
import 'package:sales_tracker/domain/ports/sale_transaction_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/sale_transaction_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/sale_transaction_dto.dart';

@LazySingleton(as: ISaleTransactionRepo)
class SaleTransactionRepoImpl extends ISaleTransactionRepo {
  final SaleTransactionCrudDataSource saleTransactionCrudDataSource;

  SaleTransactionRepoImpl(this.saleTransactionCrudDataSource);

  @override
  Future<Either<Failure, SaleTransaction>> create(
      SaleTransaction sellTransaction) async {
    final result = await saleTransactionCrudDataSource
        .create(SaleTransactionDto.fromDomain(sellTransaction));
    return result.either.fold(
        (l) => left(l),
        (r) => r
            .toDomain()
            .fold(() => left(SimpleFailure('Invalid Da')), (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<SaleTransaction>>> fetchAll() async{
    final result = await saleTransactionCrudDataSource
        .find();
    return result.either.fold(
            (l) => left(l),
            (r)=>null);
  }
}
