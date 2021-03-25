import 'package:flocalizer/flocalizer.dart';
import 'package:sales_tracker/common/map_utils.dart';

FLocale get enUsLocale {
  return FLocale(
    name: "English",
    languageCode: 'en',
    countryCode: 'us',
    translation: Translation.withMap(MapUtils.flatMap(_enUsTranslationMap)),
  );
}

const _enUsTranslationMap = {
  //todo english translations go here
};
