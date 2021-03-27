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
  'splashPage': {'salesTracker': 'Sales Tracker'},
  'loginPage': {
    'welcome': 'Welcome',
    'phoneNumber': 'Phone Number',
    'submit': 'Submit',
    'verify': 'Verify',
    'codeSentMessage': 'We have sent a 6 digit verification code.\nPlease enter the code to continue.',
    'verificationCode': 'verification code',
    'wrongNumber': 'Wrong number?',
    'noUserFound': 'No user found',
    'logoutErrorMessage':'Unable to logout.Please try again'
  },
  'homePage': {
    'today': 'Today',
    'thisWeek': 'This Week',
    'thisMonth': 'This Month',
    'sold': 'Sold',
    'funded': 'Funded',
    'loaned': 'Loaned',
    'emptyMessage': 'You have no transaction',
    'addShop': 'Add Shop',
    'myShops': 'My Shops',
    'signingOut': 'Signing out',
    'logoutQuestion': 'Are you sure you want to log out?',
    'cancel': 'Cancel',
    'ok': 'Ok',
    'undefinedSalesperson': 'Undefined Salesperson'
  },
  'newShopPage': {
    'newShop': 'New Shop',
    'prompt': 'Enter\nshop\ninformation',
    'name': 'name',
    'address': 'address',
    'phoneNumber': 'phone number',
    'add': 'Add',
    'invalidInput': 'Invalid Input',
    'undefinedSalesperson': 'Undefined Salesperson',
    'successfulMessage': 'Operation Successful'
  },
  'myShopsPage': {
    'searchPlaceHolder': 'Look for a shop',
    'name': 'Name',
    'phone': 'Phone',
    'emptyShopsMessage': 'You have no shops. Click the button below to start registering',
    'register': 'Register',
    'sale': 'Sale',
    'fund': 'Fund',
    'card': 'Card',
    'cash': 'Cash',
    'undefinedSalesperson': 'Undefined Salesperson',
  },
  'sellingPage': {
    'sale': 'Sale',
    'prompt': 'Enter\ndetails',
    'transactionInfo': 'Transaction with ',
    'totalAmount': 'total amount',
    'paidAmount': 'paid amount',
    'register': 'Register',
    'invalidInput': 'Invalid Input',
    'undefinedSalesperson': 'Undefined Salesperson',
    'successfulMessage': 'Successfully Added Sale'
  },
  'fundingPage': {
    'fund': 'Fund',
    'prompt': 'Enter\namount',
    'transactionInfo': 'Funding for ',
    'amount': 'amount',
    'buttonLabel': 'Fund',
    'invalidInput': 'Invalid Input',
    'undefinedSalesperson': 'Undefined Salesperson',
    'successfulMessage': 'Transaction Added Successfully'
  },
  'cardTransactionsPage': {
    'cardTransactions': 'Card Transactions',
    'undefinedSalesperson': 'Undefined Salesperson',
  },
  'cashTransactionsPage': {
    'cashTransactions': 'Cash Transactions',
    'undefinedSalesperson': 'Undefined Salesperson',
  }
};
