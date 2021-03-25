/*
import 'dart:convert';

import 'package:flocalizer/flocalizer.dart';
import 'package:flutter/services.dart';
import 'package:sales_tracker/_lib/utils/map_utils.dart';

class MyFlocalesLoader implements FLocalesLoader {
  final String rootPath;
  final List<LocaleCode> localeCodes;

  MyFlocalesLoader(this.localeCodes, this.rootPath);

  @override
  Stream<List<FLocale>> load() async* {
    yield await Future.wait(
      this.localeCodes.map(
        (lc) async {
          final path = "$rootPath${lc.languageCode}_${lc.countryCode}.json";
          final translation = await rootBundle.loadStructuredData<Translation>(
            path,
            (String value) async {
              final Map map = jsonDecode(value);
              return Translation.withMap(MapUtils.flatMap(map));
            },
          );
          return FLocale(
            languageCode: lc.languageCode,
            countryCode: lc.countryCode,
            translation: translation,
          );
        },
      ),
    );
  }
}

initLocalization() {
  FlocalizationProvider.init(
    fLocalesLoader: MyFlocalesLoader(
      [
        LocaleCode(languageCode: 'en', countryCode: 'us'),
        LocaleCode(languageCode: 'am', countryCode: 'et'),
      ],
      'assets/locales/',
    ),
    parser: OperatorsParser.def(),
    defaultLocales: [
      FLocale(
        languageCode: 'en',
        countryCode: 'us',
        translation: Translation.withMap({}),
      )
    ],
    defaultActiveLocaleId: 'en_us',
  );
}
*/
