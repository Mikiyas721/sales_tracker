import 'package:flocalizer/flocalizer.dart';
import 'package:sales_tracker/common/map_utils.dart';

FLocale get amEtLocale {
  return FLocale(
    name: "አማርኛ",
    languageCode: 'am',
    countryCode: 'et',
    translation: Translation.withMap(MapUtils.flatMap(_amEtTranslationMap)),
  );
}

const _amEtTranslationMap = {
  //todo amharic translations go here
};
