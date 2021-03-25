import 'package:dartz/dartz.dart';
import 'package:flocalizer/flocalizer.dart';

abstract class ILocalesCacheRepo {

  Future<Option<List<FLocale>>> loadLocales();

  Future<Unit> saveLocales(List<FLocale> locales);
}
