// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'domain/use_cases/create_fund_transaction.dart';
import 'common/dio_rest_datasource.dart';
import 'infrastructure/datasources/fund_transaction_datasource.dart';
import 'infrastructure/repos/fund_transaction_repo_impl.dart';
import 'domain/ports/fund_transaction_repo.dart';
import 'common/datasource/rest_datasource/rest_datasource.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<RestDataSource>(() => DioRestDataSource());
  gh.lazySingleton<FundTransactionCrudDataSource>(
      () => FundTransactionLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<IFundTransactionRepo>(
      () => FundTransactionRepoImpl(get<FundTransactionCrudDataSource>()));
  gh.lazySingleton<CreateFundTransaction>(
      () => CreateFundTransaction(get<IFundTransactionRepo>()));
  return get;
}
