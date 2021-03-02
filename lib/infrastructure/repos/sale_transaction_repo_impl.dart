import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/ports/card_transaction_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/card_transaction_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/card_transaction_dto.dart';

@LazySingleton(as: ICardTransactionRepo)
class SaleTransactionRepoImpl extends ICardTransactionRepo {
  final CardTransactionCrudDataSource saleTransactionCrudDataSource;

  SaleTransactionRepoImpl(this.saleTransactionCrudDataSource);

  @override
  Future<Either<Failure, CardTransaction>> create(
      CardTransaction sellTransaction) async {
    final result = await saleTransactionCrudDataSource
        .create(CardTransactionDto.fromDomain(sellTransaction));
    return result.either.fold(
        (l) => left(l),
        (r) => r
            .toDomain()
            .fold(() => left(SimpleFailure('Invalid Da')), (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<CardTransaction>>> fetchAll() async{
    final result = await saleTransactionCrudDataSource
        .find();
    return result.either.fold(
            (l) => left(l),
            (r)=>null);
  }
}
