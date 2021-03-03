import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/cache_datasource/cache_datasource.dart';
import 'package:sales_tracker/common/datasource/cache_datasource/shared_preferences_cache_datasource.dart';
import 'package:sales_tracker/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class UserCacheDataSource extends SharedPreferencesCacheDataSource {
  final CacheDataSource cacheDataSource;

  UserCacheDataSource(this.cacheDataSource)
      : super(getIt.get<SharedPreferences>());
}
