import 'package:flocalizer/models/locale.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/modules/localization/domain/ports/locales_default_repo.dart';
import 'package:sales_tracker/modules/localization/infrastructure/repos/default_locales/am_et_locale.dart';
import 'package:sales_tracker/modules/localization/infrastructure/repos/default_locales/en_us_locale.dart';

const LOCALES_CACHE_KEY = "locales_cache";

@LazySingleton(as: ILocalesDefaultRepo)
class LocalesDefaultRepoImpl implements ILocalesDefaultRepo {
  @override
  List<FLocale> getLocales() {
    return [
      enUsLocale,
      amEtLocale,
    ];
  }
}
