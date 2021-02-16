import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/fund_transaction.dart';
import 'package:sales_tracker/domain/ports/fund_transaction_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/fund_transaction_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/fund_transaction_dto.dart';

@LazySingleton(as: IFundTransactionRepo)
class FundTransactionRepoImpl implements IFundTransactionRepo {
  final FundTransactionCrudDataSource fundTransactionDataSource;

  FundTransactionRepoImpl(this.fundTransactionDataSource);

  @override
  Future<Either<Failure, FundTransaction>> create(FundTransaction fundTransaction) async {
    final result = await fundTransactionDataSource.create(FundTransactionDto.fromDomain(fundTransaction));
    return result.either.fold(
      (l) => left(l),
      (r) => r.toDomain().fold(() => left(SimpleFailure("Invalid Data")), (a) => right(a)),
    );
  }
}
