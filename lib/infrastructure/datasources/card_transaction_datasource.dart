import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_response.dart';
import 'package:sales_tracker/infrastructure/dto/card_transaction_dto.dart';

abstract class CardTransactionCrudDataSource
    extends CrudDataSource<CardTransactionDto, RestResponseFailure> {}


@LazySingleton(as:  CardTransactionCrudDataSource)
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
}
