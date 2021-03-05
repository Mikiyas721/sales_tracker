import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_request.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_response.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/infrastructure/dto/card_transaction_dto.dart';
import 'package:sales_tracker/infrastructure/dto/cash_transaction_dto.dart';

abstract class CardTransactionCrudDataSource
    extends CrudDataSource<CardTransactionDto, RestResponseFailure> {
  Future<RestResponseWithFailure> addSalesTransaction(
      CashTransaction cashTransaction, CardTransaction cardTransaction);
}

@LazySingleton(as: CardTransactionCrudDataSource)
class CardTransactionLoopbackDataSource
    extends LoopbackRestCrudDataSource<CardTransactionDto>
    implements CardTransactionCrudDataSource {
  CardTransactionLoopbackDataSource(
    RestDataSource restDataSource,
  ) : super(
            '/cardTransactions',
            restDataSource,
            (saleTransaction) => saleTransaction.toJson(),
            (map) => CardTransactionDto.fromJson(map));

  Future<RestResponseWithFailure> addSalesTransaction(
      CashTransaction cashTransaction, CardTransaction cardTransaction) async {
    return restDataSource.post(RestRequest(
      url: '$path/addSalesTransaction',
      data: {
        'card': CardTransactionDto.fromDomain(cardTransaction).toJson(),
        'cash': CashTransactionDto.fromDomain(cashTransaction).toJson()
      },
    ));
  }
}
