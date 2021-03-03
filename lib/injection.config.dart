// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'domain/use_cases/add_card_transaction.dart';
import 'domain/use_cases/add_cash_transaction.dart';
import 'application/add_fund/add_fund_bloc.dart';
import 'application/add_sale/add_sale_bloc.dart';
import 'domain/use_cases/add_shop.dart';
import 'common/datasource/cache_datasource/cache_datasource.dart';
import 'infrastructure/datasources/card_transaction_datasource.dart';
import 'application/fetch_sales/card_transactions_bloc.dart';
import 'infrastructure/datasources/cash_transaction_datasource.dart';
import 'application/fetch_funds/cash_transactions_bloc.dart';
import 'common/datasource/dio_rest_datasource.dart';
import 'domain/use_cases/fetch_card_transactions.dart';
import 'domain/use_cases/fetch_cash_transactions.dart';
import 'domain/use_cases/fetch_sales_person.dart';
import 'domain/use_cases/fetch_shop.dart';
import 'infrastructure/repos/firebase_repo_impl.dart';
import 'infrastructure/repos/fund_transaction_repo_impl.dart';
import 'domain/use_cases/get_current_autheticated_user.dart';
import 'domain/ports/card_transaction_repo.dart';
import 'domain/ports/cash_transaction_repo.dart';
import 'domain/ports/firebase_repo.dart';
import 'domain/ports/sales_person_repo.dart';
import 'domain/ports/shop_repo.dart';
import 'domain/ports/user_repo.dart';
import 'domain/use_cases/load_logged_in_user.dart';
import 'application/login/login_bloc.dart';
import 'application/my_shops/my_shops_bloc.dart';
import 'application/new_shop/new_shop_bloc.dart';
import 'domain/use_cases/request_firebase_verification_code.dart';
import 'common/datasource/rest_datasource/rest_datasource.dart';
import 'infrastructure/repos/sale_transaction_repo_impl.dart';
import 'infrastructure/datasources/sales_person_datasource.dart';
import 'infrastructure/repos/sales_person_repo_impl.dart';
import 'domain/use_cases/save_user.dart';
import 'common/datasource/cache_datasource/shared_preferences_cache_datasource.dart';
import 'infrastructure/datasources/shop_datasource.dart';
import 'infrastructure/repos/shop_repo_impl.dart';
import 'application/splash/splash_bloc.dart';
import 'application/today_stats/today_stats_bloc.dart';
import 'infrastructure/datasources/user_cache_datasource.dart';
import 'infrastructure/repos/user_repo_impl.dart';
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
  gh.lazySingleton<CacheDataSource>(
      () => SharedPreferencesCacheDataSource(get<SharedPreferences>()));
  gh.factory<CardTransactionsBloc>(() => CardTransactionsBloc());
  gh.factory<CashTransactionsBloc>(() => CashTransactionsBloc());
  gh.lazySingleton<GetCurrentAuthenticatedUser>(
      () => GetCurrentAuthenticatedUser());
  gh.lazySingleton<IFirebaseRepo>(() => FirebaseRepoImpl());
  gh.factory<LoginBloc>(() => LoginBloc());
  gh.factory<MyShopsBloc>(() => MyShopsBloc());
  gh.lazySingleton<NewShopBloc>(() => NewShopBloc());
  gh.lazySingleton<RequestFirebaseVerificationCode>(
      () => RequestFirebaseVerificationCode(get<IFirebaseRepo>()));
  gh.lazySingleton<RestDataSource>(() => DioRestDataSource());
  gh.lazySingleton<SalesPeopleCrudDataSource>(
      () => SalesPeopleLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<ShopCrudDataSource>(
      () => ShopLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<SplashBloc>(() => SplashBloc());
  gh.factory<TodayStatsBloc>(() => TodayStatsBloc());
  gh.lazySingleton<UserCacheDataSource>(
      () => UserCacheDataSource(get<CacheDataSource>()));
  gh.lazySingleton<VerifyFirebaseCode>(
      () => VerifyFirebaseCode(get<IFirebaseRepo>()));
  gh.lazySingleton<CardTransactionCrudDataSource>(
      () => CardTransactionLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<CashTransactionCrudDataSource>(
      () => CashTransactionLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<ICardTransactionRepo>(
      () => SaleTransactionRepoImpl(get<CardTransactionCrudDataSource>()));
  gh.lazySingleton<ICashTransactionRepo>(
      () => FundTransactionRepoImpl(get<CashTransactionCrudDataSource>()));
  gh.lazySingleton<ISalesPersonRepo>(
      () => SalesPersonRepoImpl(get<SalesPeopleCrudDataSource>()));
  gh.lazySingleton<IShopRepo>(() => ShopRepoImpl(get<ShopCrudDataSource>()));
  gh.lazySingleton<IUserRepo>(() => UserRepo(get<UserCacheDataSource>()));
  gh.lazySingleton<LoadLoggedInUser>(() => LoadLoggedInUser(get<IUserRepo>()));
  gh.lazySingleton<SaveUser>(() => SaveUser(get<IUserRepo>()));
  gh.lazySingleton<AddCardTransaction>(
      () => AddCardTransaction(get<ICardTransactionRepo>()));
  gh.lazySingleton<AddCashTransaction>(
      () => AddCashTransaction(get<ICashTransactionRepo>()));
  gh.lazySingleton<AddShop>(() => AddShop(get<IShopRepo>()));
  gh.lazySingleton<FetchCardTransactions>(
      () => FetchCardTransactions(get<ICardTransactionRepo>()));
  gh.lazySingleton<FetchCashTransactions>(
      () => FetchCashTransactions(get<ICashTransactionRepo>()));
  gh.lazySingleton<FetchSalesPerson>(
      () => FetchSalesPerson(get<ISalesPersonRepo>()));
  gh.lazySingleton<FetchShops>(() => FetchShops(get<IShopRepo>()));
  return get;
}
