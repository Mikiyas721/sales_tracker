// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/add_fund/add_fund_bloc.dart';
import 'domain/use_cases/add_fund_transaction.dart';
import 'application/add_sale/add_sale_bloc.dart';
import 'domain/use_cases/add_sale_transaction.dart';
import 'domain/use_cases/add_shop.dart';
import 'common/dio_rest_datasource.dart';
import 'domain/use_cases/fetch_fund_transactions.dart';
import 'application/fetch_funds/fetch_funds_bloc.dart';
import 'domain/use_cases/fetch_sale_transactions.dart';
import 'application/fetch_sales/fetch_sales_bloc.dart';
import 'domain/use_cases/fetch_sales_person.dart';
import 'domain/use_cases/fetch_shop.dart';
import 'infrastructure/repos/firebase_repo_impl.dart';
import 'infrastructure/datasources/fund_transaction_datasource.dart';
import 'infrastructure/repos/fund_transaction_repo_impl.dart';
import 'domain/ports/firebase_repo.dart';
import 'domain/ports/fund_transaction_repo.dart';
import 'domain/ports/sale_transaction_repo.dart';
import 'domain/ports/sales_person_repo.dart';
import 'domain/ports/shop_repo.dart';
import 'application/login/login_bloc.dart';
import 'application/my_shops/my_shops_bloc.dart';
import 'application/new_shop/new_shop_bloc.dart';
import 'domain/use_cases/request_firebase_verification_code.dart';
import 'common/datasource/rest_datasource/rest_datasource.dart';
import 'infrastructure/datasources/sale_transaction_datasource.dart';
import 'infrastructure/repos/sale_transaction_repo_impl.dart';
import 'infrastructure/datasources/sales_person_datasource.dart';
import 'infrastructure/repos/sales_person_repo_impl.dart';
import 'infrastructure/datasources/shop_datasource.dart';
import 'infrastructure/repos/shop_repo_impl.dart';
import 'application/today_stats/today_stats_bloc.dart';
import 'domain/use_cases/verify_firebase_code.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<AddFundBloc>(() => AddFundBloc());
  gh.lazySingleton<AddSaleBloc>(() => AddSaleBloc());
  gh.factory<FetchFundsBloc>(() => FetchFundsBloc());
  gh.factory<FetchSalesBloc>(() => FetchSalesBloc());
  gh.lazySingleton<IFirebaseRepo>(() => FirebaseRepoImpl());
  gh.factory<LoginBloc>(() => LoginBloc());
  gh.factory<MyShopsBloc>(() => MyShopsBloc());
  gh.lazySingleton<NewShopBloc>(() => NewShopBloc());
  gh.lazySingleton<RequestFirebaseVerificationCode>(
      () => RequestFirebaseVerificationCode(get<IFirebaseRepo>()));
  gh.lazySingleton<RestDataSource>(() => DioRestDataSource());
  gh.lazySingleton<SaleTransactionCrudDataSource>(
      () => SaleTransactionLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<SalesPeopleCrudDataSource>(
      () => SalesPeopleLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<ShopCrudDataSource>(
      () => ShopLoopbackDataSource(get<RestDataSource>()));
  gh.factory<TodayStatsBloc>(() => TodayStatsBloc());
  gh.lazySingleton<VerifyFirebaseCode>(
      () => VerifyFirebaseCode(get<IFirebaseRepo>()));
  gh.lazySingleton<FundTransactionCrudDataSource>(
      () => FundTransactionLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<IFundTransactionRepo>(
      () => FundTransactionRepoImpl(get<FundTransactionCrudDataSource>()));
  gh.lazySingleton<ISaleTransactionRepo>(
      () => SaleTransactionRepoImpl(get<SaleTransactionCrudDataSource>()));
  gh.lazySingleton<ISalesPersonRepo>(
      () => SalesPersonRepoImpl(get<SalesPeopleCrudDataSource>()));
  gh.lazySingleton<IShopRepo>(() => ShopRepoImpl(get<ShopCrudDataSource>()));
  gh.lazySingleton<AddFundTransaction>(
      () => AddFundTransaction(get<IFundTransactionRepo>()));
  gh.lazySingleton<AddSaleTransaction>(
      () => AddSaleTransaction(get<ISaleTransactionRepo>()));
  gh.lazySingleton<AddShop>(() => AddShop(get<IShopRepo>()));
  gh.lazySingleton<FetchFundTransactions>(
      () => FetchFundTransactions(get<IFundTransactionRepo>()));
  gh.lazySingleton<FetchSaleTransactions>(
      () => FetchSaleTransactions(get<ISaleTransactionRepo>()));
  gh.lazySingleton<FetchSalesPerson>(
      () => FetchSalesPerson(get<ISalesPersonRepo>()));
  gh.lazySingleton<FetchShops>(() => FetchShops(get<IShopRepo>()));
  return get;
}
