import 'package:flutter/material.dart';
import './presentation/pages/funding_page.dart';
import './presentation/pages/my_shops_page.dart';
import './presentation/pages/new_shop_page.dart';
import './presentation/pages/sale_page.dart';
import './presentation/pages/transactions_page.dart';
import './presentation/pages/home_page.dart';
import './presentation/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Tracker',
      theme: ThemeData(),
      initialRoute: '/',
      routes: routes,
    );
  }
}

final routes = {
  '/': (BuildContext context) => HomePage(),
  '/loginPage': (BuildContext context) => LoginPage(),
  '/homePage':(BuildContext context) => HomePage(),
  '/newShopPage':(BuildContext context) => NewShopPage(),
  '/myShopsPage':(BuildContext context) => MyShopsPage(),
  '/salePage':(BuildContext context) => SalePage(),
  '/fundPage':(BuildContext context) => FundingPage(),
  '/transactionsPage':(BuildContext context) => TransactionsPage(),
};
