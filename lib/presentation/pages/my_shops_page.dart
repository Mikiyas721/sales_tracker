import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../presentation/models/my_shops_view_model.dart';
import '../../presentation/views/my_shops_view.dart';
import '../../common/common.dart';

class MyShopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leadingWidth: 30,
        title: CupertinoTextField(
          placeholder: 'Look for a shop',
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            border: Border.all(color: Colors.black26, width: 0.7),
          ),
          onChanged: (String value) {},
        ),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int count) {
            return MyShopView(
              myShopViewModel: MyShopsViewModel(
                  name: 'Abebe Kebede',
                  phoneNumber: '251 941135730',
                  location: 'Lafto, AA'),
              onSale: () {
                Navigator.pushNamed(context, '/salePage');
              },
              onFund: () {
                Navigator.pushNamed(context, '/fundPage');
              },
              onTransaction: () {
                Navigator.pushNamed(context, '/transactionsPage');
              },
            );
          }),
    );
  }
}
