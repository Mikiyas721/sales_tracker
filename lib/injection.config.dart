// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'modules/localization/infrastructure/repos/active_locale_repo_impl.dart';
import 'domain/use_cases/add_card_transaction.dart';
import 'domain/use_cases/add_cash_transaction.dart';
import 'application/add_fund/add_fund_bloc.dart';
import 'application/add_sale/add_sale_bloc.dart';
import 'domain/use_cases/add_sale_transaction.dart';
import 'domain/use_cases/add_shop.dart';
import 'common/datasource/cache_datasource/cache_datasource.dart';
import 'infrastructure/datasources/card_transaction_datasource.dart';
import 'infrastructure/repos/card_transaction_repo_impl.dart';
import 'application/fetch_sales/card_transactions_bloc.dart';
import 'infrastructure/datasources/cash_transaction_datasource.dart';
import 'infrastructure/repos/cash_transaction_repo_impl.dart';
import 'application/fetch_funds/cash_transactions_bloc.dart';
import 'domain/use_cases/clear_loggedin_user.dart';
import 'config/config.definition.dart';
import 'config/development.config.dart';
import 'common/datasource/dio_rest_datasource.dart';
import 'domain/use_cases/fetch_card_transactions.dart';
import 'domain/use_cases/fetch_cash_transactions.dart';
import 'domain/use_cases/fetch_sales_person.dart';
import 'domain/use_cases/fetch_shops.dart';
import 'domain/use_cases/fetch_this_month_stats.dart';
import 'domain/use_cases/fetch_this_week_stats.dart';
import 'domain/use_cases/fetch_today_stats.dart';
import 'infrastructure/repos/firebase_repo_impl.dart';
import 'domain/use_cases/get_current_autheticated_user.dart';
import 'modules/localization/domain/ports/active_locale_repo.dart';
import 'domain/ports/card_transaction_repo.dart';
import 'domain/ports/cash_transaction_repo.dart';
import 'domain/ports/firebase_repo.dart';
import 'modules/localization/domain/ports/locales_cache_repo.dart';
import 'modules/localization/domain/ports/locales_default_repo.dart';
import 'modules/localization/domain/ports/locales_remote_repo.dart';
import 'domain/ports/sales_person_repo.dart';
import 'domain/ports/shop_repo.dart';
import 'domain/ports/shop-sales_repo.dart';
import 'domain/ports/user_repo.dart';
import 'modules/localization/domain/use_cases/load_active_locale.dart';
import 'modules/localization/domain/use_cases/load_locales.dart';
import 'domain/use_cases/load_logged_in_user.dart';
import 'modules/localization/application/locale/locale_bloc.dart';
import 'modules/localization/infrastructure/repos/locales_cache_repo_impl.dart';
import 'modules/localization/infrastructure/repos/locales_default_repo_impl.dart';
import 'modules/localization/infrastructure/repos/locales_remote_repo_impl.dart';
import 'application/login/login_bloc.dart';
import 'domain/use_cases/login_into_api.dart';
import 'application/my_shops/my_shops_bloc.dart';
import 'application/new_shop/new_shop_bloc.dart';
import 'config/production.config.dart';
import 'injection.dart';
import 'domain/use_cases/request_firebase_verification_code.dart';
import 'common/datasource/rest_datasource/rest_datasource.dart';
import 'infrastructure/datasources/sales_person_datasource.dart';
import 'infrastructure/repos/sales_person_repo_impl.dart';
import 'domain/use_cases/save_user.dart';
import 'domain/use_cases/search_shop.dart';
import 'modules/localization/domain/use_cases/set_active_locale.dart';
import 'common/datasource/cache_datasource/shared_preferences_cache_datasource.dart';
import 'infrastructure/datasources/shop_datasource.dart';
import 'infrastructure/repos/shop_repo_impl.dart';
import 'infrastructure/datasources/shop-sales_datasource.dart';
import 'infrastructure/repos/shop-sales_repo_impl.dart';
import 'application/splash/splash_bloc.dart';
import 'config/staging.config.dart';
import 'application/stats/stats_bloc.dart';
import 'infrastructure/datasources/user_cache_datasource.dart';
import 'infrastructure/repos/user_repo_impl.dart';
import 'domain/use_cases/verify_firebase_code.dart';

/// Environment names
const _development = 'development';
const _production = 'production';
const _staging = 'staging';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<AddFundBloc>(() => AddFundBloc());
  gh.lazySingleton<AddSaleBloc>(() => AddSaleBloc());
  gh.factory<CardTransactionsBloc>(() => CardTransactionsBloc());
  gh.factory<CashTransactionsBloc>(() => CashTransactionsBloc());
  gh.lazySingleton<ConfigDefinition>(() => DevelopmentConfigDefinition(),
      registerFor: {_development});
  gh.lazySingleton<ConfigDefinition>(() => ProductionConfigDefinition(),
      registerFor: {_production});
  gh.lazySingleton<ConfigDefinition>(() => StagingConfigDefinition(),
      registerFor: {_staging});
  gh.lazySingleton<GetCurrentAuthenticatedUser>(
      () => GetCurrentAuthenticatedUser());
  gh.lazySingleton<IActiveLocaleRepo>(() => ActiveLocaleRepoImpl(get()));
  gh.lazySingleton<IFirebaseRepo>(() => FirebaseRepoImpl());
  gh.lazySingleton<ILocalesCacheRepo>(() => LocalesCacheRepoImpl(get()));
  gh.lazySingleton<ILocalesDefaultRepo>(() => LocalesDefaultRepoImpl());
  gh.lazySingleton<ILocalesRemoteRepo>(() => LocalesRemoteRepoImpl());
  gh.lazySingleton<LoadActiveLocaleId>(
      () => LoadActiveLocaleId(get<IActiveLocaleRepo>()));
  gh.lazySingleton<LoadLocales>(
      () => LoadLocales(get<ILocalesCacheRepo>(), get<ILocalesRemoteRepo>()));
  gh.lazySingleton<LocaleBloc>(() => LocaleBloc(
        get<LoadLocales>(),
        get<ILocalesDefaultRepo>(),
        get<LoadActiveLocaleId>(),
      ));
  gh.factory<LoginBloc>(() => LoginBloc());
  gh.factory<MyShopsBloc>(() => MyShopsBloc());
  gh.lazySingleton<NewShopBloc>(() => NewShopBloc());
  gh.lazySingleton<RequestFirebaseVerificationCode>(
      () => RequestFirebaseVerificationCode(get<IFirebaseRepo>()));
  gh.lazySingleton<RestDataSource>(
      () => DioRestDataSource(get<ConfigDefinition>()));
  gh.lazySingleton<SalesPeopleCrudDataSource>(
      () => SalesPeopleLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<SetActiveLocale>(
      () => SetActiveLocale(get<IActiveLocaleRepo>()));
  final resolvedSharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => resolvedSharedPreferences);
  gh.lazySingleton<ShopCrudDataSource>(
      () => ShopLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<ShopSalesCrudDataSource>(
      () => ShopSalesLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<SplashBloc>(() => SplashBloc());
  gh.factory<StatsBloc>(() => StatsBloc());
  gh.lazySingleton<VerifyFirebaseCode>(
      () => VerifyFirebaseCode(get<IFirebaseRepo>()));
  gh.lazySingleton<CacheDataSource>(
      () => SharedPreferencesCacheDataSource(get<SharedPreferences>()));
  gh.lazySingleton<CardTransactionCrudDataSource>(
      () => CardTransactionLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<CashTransactionCrudDataSource>(
      () => CashTransactionLoopbackDataSource(get<RestDataSource>()));
  gh.lazySingleton<ICardTransactionRepo>(
      () => CardTransactionRepoImpl(get<CardTransactionCrudDataSource>()));
  gh.lazySingleton<ICashTransactionRepo>(
      () => CashTransactionRepoImpl(get<CashTransactionCrudDataSource>()));
  gh.lazySingleton<ISalesPersonRepo>(
      () => SalesPersonRepoImpl(get<SalesPeopleCrudDataSource>()));
  gh.lazySingleton<IShopRepo>(() => ShopRepoImpl(get<ShopCrudDataSource>()));
  gh.lazySingleton<IShopSalesRepo>(
      () => ShopSalesRepoImpl(get<ShopSalesCrudDataSource>()));
  gh.lazySingleton<LoginIntoApi>(() => LoginIntoApi(get<ISalesPersonRepo>()));
  gh.lazySingleton<SearchShop>(() => SearchShop(get<IShopSalesRepo>()));
  gh.lazySingleton<UserCacheDataSource>(
      () => UserCacheDataSource(get<CacheDataSource>()));
  gh.lazySingleton<AddCardTransaction>(
      () => AddCardTransaction(get<ICardTransactionRepo>()));
  gh.lazySingleton<AddCashTransaction>(
      () => AddCashTransaction(get<ICashTransactionRepo>()));
  gh.lazySingleton<AddSaleTransaction>(
      () => AddSaleTransaction(get<ICardTransactionRepo>()));
  gh.lazySingleton<AddShop>(() => AddShop(get<IShopRepo>()));
  gh.lazySingleton<FetchCardTransactions>(
      () => FetchCardTransactions(get<ICardTransactionRepo>()));
  gh.lazySingleton<FetchCashTransactions>(
      () => FetchCashTransactions(get<ICashTransactionRepo>()));
  gh.lazySingleton<FetchSalesPerson>(
      () => FetchSalesPerson(get<ISalesPersonRepo>()));
  gh.lazySingleton<FetchShops>(() => FetchShops(get<IShopSalesRepo>()));
  gh.lazySingleton<FetchThisMonthCard>(
      () => FetchThisMonthCard(get<ICardTransactionRepo>()));
  gh.lazySingleton<FetchThisMonthCash>(
      () => FetchThisMonthCash(get<ICashTransactionRepo>()));
  gh.lazySingleton<FetchThisWeekCard>(
      () => FetchThisWeekCard(get<ICardTransactionRepo>()));
  gh.lazySingleton<FetchThisWeekCash>(
      () => FetchThisWeekCash(get<ICashTransactionRepo>()));
  gh.lazySingleton<FetchTodayCard>(
      () => FetchTodayCard(get<ICardTransactionRepo>()));
  gh.lazySingleton<FetchTodayCash>(
      () => FetchTodayCash(get<ICashTransactionRepo>()));
  gh.lazySingleton<IUserRepo>(() => UserRepo(get<UserCacheDataSource>()));
  gh.lazySingleton<LoadLoggedInUser>(() => LoadLoggedInUser(get<IUserRepo>()));
  gh.lazySingleton<SaveUser>(() => SaveUser(get<IUserRepo>()));
  gh.lazySingleton<ClearLoggedInUser>(
      () => ClearLoggedInUser(get<IUserRepo>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
