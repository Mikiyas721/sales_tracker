import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/ports/cash_transaction_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/cash_transaction_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/cash_transaction_dto.dart';

@LazySingleton(as: ICashTransactionRepo)
class FundTransactionRepoImpl implements ICashTransactionRepo {
  final CashTransactionCrudDataSource fundTransactionCrudDataSource;

  FundTransactionRepoImpl(this.fundTransactionCrudDataSource);

  @override
  Future<Either<Failure, CashTransaction>> create(CashTransaction fundTransaction) async {
    final result = await fundTransactionCrudDataSource.create(CashTransactionDto.fromDomain(fundTransaction));
    return result.either.fold(
      (l) => left(l),
      (r) => r.toDomain().fold(() => left(SimpleFailure("Invalid Data")), (a) => right(a)),
    );
  }

  @override
  Future<Either<Failure, List<CashTransaction>>> fetchAll() async{
    final result = await fundTransactionCrudDataSource
        .find();
    return result.either.fold(
            (l) => left(l),
            (r)=>null);
  }

}
