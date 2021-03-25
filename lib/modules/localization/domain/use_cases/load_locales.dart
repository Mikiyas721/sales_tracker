import 'dart:async';

import 'package:flocalizer/flocalizer.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/modules/localization/domain/ports/locales_cache_repo.dart';
import 'package:sales_tracker/modules/localization/domain/ports/locales_remote_repo.dart';

@lazySingleton
class LoadLocales {
  final ILocalesCacheRepo cacheRepo;
  final ILocalesRemoteRepo remoteRepo;


  LoadLocales(this.cacheRepo, this.remoteRepo);

  Stream<List<FLocale>> execute() async* {
       final cached = await this.cacheRepo.loadLocales().then((value) => value.getOrElse(() => null));
    if (cached != null) yield cached;
    final remote = await remoteRepo.loadLocales().then((value) => value.getOrElse(() => null));
    if (remote != null) {
      yield remote;
      cacheRepo.saveLocales(remote);
    }
    await for (List<FLocale> locales in remoteRepo.watchLocales()) {
      yield locales;
      cacheRepo.saveLocales(locales);
    }
  }
}
