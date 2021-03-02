import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_response.dart';
import 'package:sales_tracker/infrastructure/dto/cash_transaction_dto.dart';

abstract class CashTransactionCrudDataSource
    implements CrudDataSource<CashTransactionDto, RestResponseFailure> {}

@LazySingleton(as:  CashTransactionCrudDataSource)
class CashTransactionLoopbackDataSource extends LoopbackRestCrudDataSource<CashTransactionDto> implements CashTransactionCrudDataSource {
  CashTransactionLoopbackDataSource(RestDataSource restDataSource)
      : super(
          '/cashTransactions',
          restDataSource,
          (fundTransaction) => fundTransaction.toJson(),
          (map) => CashTransactionDto.fromJson(map),
        );
}
