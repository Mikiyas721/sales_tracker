import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/fund_transaction.dart';
import 'package:sales_tracker/domain/ports/fund_transaction_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/fund_transaction_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/fund_transaction_dto.dart';

@LazySingleton(as: IFundTransactionRepo)
class FundTransactionRepoImpl implements IFundTransactionRepo {
  final FundTransactionCrudDataSource fundTransactionCrudDataSource;

  FundTransactionRepoImpl(this.fundTransactionCrudDataSource);

  @override
  Future<Either<Failure, FundTransaction>> create(FundTransaction fundTransaction) async {
    final result = await fundTransactionCrudDataSource.create(FundTransactionDto.fromDomain(fundTransaction));
    return result.either.fold(
      (l) => left(l),
      (r) => r.toDomain().fold(() => left(SimpleFailure("Invalid Data")), (a) => right(a)),
    );
  }

  @override
  Future<Either<Failure, List<FundTransaction>>> fetchAll() async{
    final result = await fundTransactionCrudDataSource
        .find();
    return result.either.fold(
            (l) => left(l),
            (r)=>null);
  }

}
