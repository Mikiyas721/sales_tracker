import 'package:dartz/dartz.dart';
import 'package:flocalizer/models/locale.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/datasource/cache_datasource/cache_datasource.dart';
import 'package:sales_tracker/modules/localization/domain/ports/locales_cache_repo.dart';
import 'package:sales_tracker/modules/localization/infrastructure/dtos/flocale_dto.dart';

const LOCALES_CACHE_KEY = "locales_cache";

@LazySingleton(as: ILocalesCacheRepo)
class LocalesCacheRepoImpl implements ILocalesCacheRepo {
  final CacheDataSource cacheDataSource;

  LocalesCacheRepoImpl(this.cacheDataSource);

  @override
  Future<Option<List<FLocale>>> loadLocales() async {
    final result=await cacheDataSource.getList(LOCALES_CACHE_KEY);
    return result.fold(
          () => none(),
          (list) => some(
        list.map<FLocale>((a) => FLocaleDto.fromJson(a).toDomain2()).toList(),
      ),
    );
  }

  @override
  Future<Unit> saveLocales(List<FLocale> locales) async {
    await cacheDataSource.saveList(LOCALES_CACHE_KEY, locales.map(FLocaleDto.fromDomain).toList());
    return unit;
  }
}
