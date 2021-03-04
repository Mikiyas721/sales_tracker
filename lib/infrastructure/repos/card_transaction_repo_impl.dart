import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/ports/card_transaction_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/card_transaction_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/card_transaction_dto.dart';

@LazySingleton(as: ICardTransactionRepo)
class CardTransactionRepoImpl extends ICardTransactionRepo {
  final CardTransactionCrudDataSource saleTransactionCrudDataSource;

  CardTransactionRepoImpl(this.saleTransactionCrudDataSource);

  @override
  Future<Either<Failure, CardTransaction>> create(
      CardTransaction cardTransaction) async {
    final result = await saleTransactionCrudDataSource
        .create(CardTransactionDto.fromDomain(cardTransaction));
    return result.either.fold(
        (l) => left(l),
        (r) => r
            .toDomain()
            .fold(() => left(SimpleFailure('Invalid Data')), (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<CardTransaction>>> fetchAll(
      String salespersonId, String shopId) async {
    final result = await saleTransactionCrudDataSource.find(options: {
      "filter": {
        "where": {
          "and": [
            {"salesPersonId": "$salespersonId"},
            {"shopId": "$shopId"}
          ]
        }
      }
    });
    return result.either.fold(
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }

  @override //TODO add filter logic to below functions
  Future<Either<Failure, List<CardTransaction>>> fetchThisMonth(
      String salespersonId) async {
    final result = await saleTransactionCrudDataSource.find(options: {
      "filter": {
        "where": {
          "and": [
            {"salesPersonId": "$salespersonId"},
            {}
          ]
        }
      }
    });
    return result.either.fold(
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<CardTransaction>>> fetchThisWeek(
      String salespersonId) async {
    final result = await saleTransactionCrudDataSource.find(options: {
      "filter": {
        "where": {
          "and": [
            {"salesPersonId": "$salespersonId"},
            {}
          ]
        }
      }
    });
    return result.either.fold(
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<CardTransaction>>> fetchToday(
      String salespersonId) async {
    final result = await saleTransactionCrudDataSource.find(options: {
      "filter": {
        "where": {
          "and": [
            {"salesPersonId": "$salespersonId"},
            {}
          ]
        }
      }
    });
    return result.either.fold(
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }
}
