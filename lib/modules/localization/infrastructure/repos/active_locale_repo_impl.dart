import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/cache_datasource/cache_datasource.dart';
import 'package:sales_tracker/modules/localization/domain/ports/active_locale_repo.dart';

const ACTIVE_LOCALE_CACHE_KEY = 'active_locale_id';

@LazySingleton(as: IActiveLocaleRepo)
class ActiveLocaleRepoImpl implements IActiveLocaleRepo {
  final CacheDataSource cacheDataSource;

  ActiveLocaleRepoImpl(this.cacheDataSource);

  @override
  Future<Option<String>> getActiveLocaleId() async {
    final val = await cacheDataSource.getString(ACTIVE_LOCALE_CACHE_KEY);
    return val;
  }

  @override
  Future<Unit> setActiveLocaleId(String id) async {
    await cacheDataSource.saveString(ACTIVE_LOCALE_CACHE_KEY, id);
    return unit;
  }
}
