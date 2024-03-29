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
  'splashPage': {'salesTracker': 'ሽያጭ መቆጣጠሪያ'},
  'loginPage': {
    'welcome': 'እንካን ደህና መጡ',
    'phoneNumber': 'ስልክ ቁጥር',
    'submit': 'አስገባ',
    'verify': 'አረጋግጥ',
    'codeSentMessage': 'ባለ 6 አሀዝ ማረጋገጫ ልከናል።\nለመቀጠል ቁጥሩን ያስገቡ',
    'verificationCode': 'ማረጋገጫ ቁጥር',
    'wrongNumber': 'የተሳሳተ ቁጥር?',
    'noUserFound': 'ተጠቃሚ አልተገኘም',
    'logoutErrorMessage': 'ለመውጣት አልተቻለም። እባኮ ደግመው ይምክሩ።'
  },
  'homePage': {
    'today': 'ዛሬ',
    'thisWeek': 'በዚህ ሳምንት',
    'thisMonth': 'በዚህ ወር',
    'sold': 'የሸጥከው',
    'funded': 'ገንዘብ የተቀበልከው',
    'loaned': 'ያበደርከው',
    'emptyMessage': 'ምንም ሽያጭ የለህም',
    'addShop': 'ሱቅ ጨምር',
    'myShops': 'የኔ ሱቆች',
    'signingOut': 'እየወጣህ ነው',
    'logoutQuestion': 'እርግጠኛ ነህ? መውጣት ትፋልጋለህ?',
    'cancel': 'አቓርጥ',
    'ok': 'ቀጥል',
    'undefinedSalesperson': 'ማይታወቅ ሻጭ'
  },
  'newShopPage': {
    'newShop': 'አዲስ ሱቅ',
    'prompt': 'የሱቅን\nመረጃ\nአስገባ',
    'name': 'ስም',
    'address': 'አድራሻ',
    'phoneNumber': 'ስልክ ቁጥር',
    'add': 'ጨምር',
    'invalidInput': 'የተሳሳተ መረጃ',
    'undefinedSalesperson': 'ማይታወቅ ሻጭ',
    'successfulMessage': 'ሙከራው ተሳክቱዋል'
  },
  'myShopsPage': {
    'searchPlaceHolder': 'ሱቅ ፋልግ',
    'name': 'ስም',
    'phone': 'ስልክ',
    'emptyShopsMessage': 'ምንም ሱቅ የለህም።ከስር ሚታየውን በተን በመጫን ሱቅ መመዝገብ መጀመር ትችላለህ።',
    'register': 'መዝግብ',
    'sale': 'ሽጥ',
    'fund': 'ተቀበል',
    'card': 'ካርድ',
    'cash': 'ገንዘብ',
    'undefinedSalesperson': 'ማይታወቅ ሻጭ',
  },
  'sellingPage': {
    'sale': 'ሽያጭ',
    'prompt': 'ዝርዝሩን\nአስገባ',
    'transactionInfo': 'ርክክብ ከ ',
    'totalAmount': 'አጠቃላይ መጠን',
    'paidAmount': 'የተከፈለ መጠን',
    'register': 'መዝግብ',
    'invalidInput': 'የተሳሳተ መረጃ',
    'undefinedSalesperson': 'ማይታወቅ ሻጭ',
    'successfulMessage': 'ሙከራው ተሳክቱዋል'
  },
  'fundingPage': {
    'fund': 'ማካካሻ',
    'prompt': 'መጠኑን\nአስገባ',
    'transactionInfo': 'ማካካሻ ለ',
    'amount': 'መጠን',
    'buttonLabel': 'አካክስ',
    'invalidInput': 'የተሳሳተ መረጃ',
    'undefinedSalesperson': 'ማይታወቅ ሻጭ',
    'successfulMessage': 'ሙከራው ተሳክቱዋል'
  },
  'cardTransactionsPage': {
    'cardTransactions': 'የ ካርድ ርክክቦች',
    'undefinedSalesperson': 'ማይታወቅ ሻጭ',
  },
  'cashTransactionsPage': {
    'cashTransactions': 'የ ገንዘብ ርክክቦች',
    'undefinedSalesperson': 'ማይታወቅ ሻጭ',
  }
};
