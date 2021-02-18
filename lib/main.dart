import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sales_tracker/presentation/pages/verfication_page.dart';
import './presentation/pages/funding_page.dart';
import './presentation/pages/my_shops_page.dart';
import './presentation/pages/new_shop_page.dart';
import './presentation/pages/sale_page.dart';
import './presentation/pages/transactions_page.dart';
import './presentation/pages/home_page.dart';
import './presentation/pages/login_page.dart';
import 'injection.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff5837B6),
          secondaryHeaderColor: Color(0xff693DE5),
          appBarTheme: AppBarTheme(
              color: Colors.white,
              actionsIconTheme: IconThemeData(color: Colors.black),
              iconTheme: IconThemeData(color: Colors.black),
              textTheme: TextTheme(
                  headline6: GoogleFonts.poppins(
                fontSize: 24,
                color: Colors.black,
              ))),
          textTheme: TextTheme(
            headline2: GoogleFonts.montserrat(fontSize: 40, color: Colors.black),
            headline3: GoogleFonts.montserrat(fontSize: 30, color: Colors.black),
            headline4: GoogleFonts.montserrat(fontSize: 20, color: Colors.black),
            headline5: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
            headline6: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
            caption: GoogleFonts.montserrat(fontSize: 12,color: Colors.grey)
          )),
      initialRoute: '/',
      routes: routes,
    );
  }
}

final routes = {
  '/': (BuildContext context) => LoginPage(),
  '/loginPage': (BuildContext context) => LoginPage(),
  '/verificationPage': (BuildContext context) => VerificationPage(),
  '/homePage': (BuildContext context) => HomePage(),
  '/newShopPage': (BuildContext context) => NewShopPage(),
  '/myShopsPage': (BuildContext context) => MyShopsPage(),
  '/salePage': (BuildContext context) => SalePage(),
  '/fundPage': (BuildContext context) => FundingPage(),
  '/transactionsPage': (BuildContext context) => TransactionsPage(),
};
