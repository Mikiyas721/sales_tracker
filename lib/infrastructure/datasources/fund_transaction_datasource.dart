import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/crud_datasource.dart';
import 'package:sales_tracker/common/datasource/crud_datasource/rest_crud_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_datasource.dart';
import 'package:sales_tracker/common/datasource/rest_datasource/rest_response.dart';
import 'package:sales_tracker/infrastructure/dto/fund_transaction_dto.dart';

abstract class FundTransactionCrudDataSource
    implements CrudDataSource<FundTransactionDto, RestResponseFailure> {}

@LazySingleton(as:  FundTransactionCrudDataSource)
class FundTransactionLoopbackDataSource extends LoopbackRestCrudDataSource<FundTransactionDto> implements FundTransactionCrudDataSource {
  FundTransactionLoopbackDataSource(RestDataSource restDataSource)
      : super(
          '/fundTransactions',
          restDataSource,
          (fundTransaction) => fundTransaction.toJson(),
          (map) => FundTransactionDto.fromJson(map),
        );
}
