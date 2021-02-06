import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../presentation/models/my_shops_view_model.dart';
import '../../presentation/views/my_shops_view.dart';

class MyShopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CupertinoTextField(
          placeholder: 'Look for a shop',
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
              onSale: () {},
              onFund: () {},
              onTransaction: () {},
            );
          }),
    );
  }
}
