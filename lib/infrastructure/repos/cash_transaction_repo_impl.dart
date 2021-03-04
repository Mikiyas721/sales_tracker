import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/ports/cash_transaction_repo.dart';
import 'package:sales_tracker/infrastructure/datasources/cash_transaction_datasource.dart';
import 'package:sales_tracker/infrastructure/dto/cash_transaction_dto.dart';

@LazySingleton(as: ICashTransactionRepo)
class CashTransactionRepoImpl implements ICashTransactionRepo {
  final CashTransactionCrudDataSource fundTransactionCrudDataSource;

  CashTransactionRepoImpl(this.fundTransactionCrudDataSource);

  @override
  Future<Either<Failure, CashTransaction>> create(
      CashTransaction cashTransaction) async {
    final result = await fundTransactionCrudDataSource
        .create(CashTransactionDto.fromDomain(cashTransaction));
    return result.either.fold(
      (l) => left(l),
      (r) => r
          .toDomain()
          .fold(() => left(SimpleFailure("Invalid Data")), (a) => right(a)),
    );
  }

  @override
  Future<Either<Failure, List<CashTransaction>>> fetchAll(
      String salespersonId, String shopId) async {
    final result = await fundTransactionCrudDataSource.find(options: {
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
            right(IdDto.toDomainList<CashTransaction, CashTransactionDto>(r)));
  }

  @override //TODO add filter logic to below functions
  Future<Either<Failure, List<CashTransaction>>> fetchThisMonth(
      String salespersonId) async {
    final result = await fundTransactionCrudDataSource.find(options: {
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
            right(IdDto.toDomainList<CashTransaction, CashTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<CashTransaction>>> fetchThisWeek(
      String salespersonId) async {
    final result = await fundTransactionCrudDataSource.find(options: {
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
            right(IdDto.toDomainList<CashTransaction, CashTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<CashTransaction>>> fetchToday(
      String salespersonId) async {
    final result = await fundTransactionCrudDataSource.find(options: {
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
            right(IdDto.toDomainList<CashTransaction, CashTransactionDto>(r)));
  }
}
